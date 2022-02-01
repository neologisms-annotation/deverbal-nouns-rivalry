#####################################
### Semantic rivalry between French deverbal neologisms in -age, -ion and -ment
###
### January 2022
#####################################

##############################################
# IMPORT AND PREPARE DATA
##############################################

# Step 1: set working directory

# Step 2: load data
data <- read.table("affrix_publi1_dataset.txt", header = TRUE, stringsAsFactors = TRUE )
summary(data)

# Step 3: remove variable (column) not under study
data2=data[,-1]


#######################################################
# PART 1: SUPERVISED METHOD -  RANDOM FOREST ANALYSIS
#######################################################

# Load packages
library(party)
library(permimp)

# Step 1: run random forest
set.seed(5467390)
rf <- cforest(suffix ~ ., controls = cforest_unbiased(ntree=3000, mtry=5), data=data2)

# Step 2: create confusion matrix
oobPredicted=predict(rf,OOB=T)
library(caret)
(cm <- confusionMatrix(data = oobPredicted, reference = data2$suffix))

# Step 3: assess variable importance
imp <- permimp(rf, conditional = TRUE)
plot(imp, type = "dot")



##########################################################
# PART 2: UNSUPERVISED METHODS - HIERARCHICAL CLUSTERING
##########################################################


# Step 1: remove variable with suffix and create suffix labels 
data3 <- data2[, -1]
SUFFIX <- data2[, 1]

# Step 2: create distance matrix
library(cluster)
dist <-daisy(data3)

# Step 3: run clustering
suffix = hclust(dist, method = "ward.D2")

# Step 4: plot results
plot(suffix)

# Step 5: split into 3 groups
grps = cutree(suffix, k=3)

# Step 6: compare cluster and suffix distributions
table(grps, SUFFIX)



##############################################################
# PART 3: UNSUPERVISED METHODS - t-SNE DIMENSIONAL REDUCTION
##############################################################

# Load package 
library(Rtsne)

# Step 1: run t-SNE
set.seed(1)
resTSNE <-  Rtsne(mdist2, perplexity=10, is_distance = TRUE, pca = FALSE)

# Step 2: visualize t-SNE with suffix projection
library(ggplot2)
d_tsne <- data.frame(resTSNE$Y)
names(d_tsne) <-  c("tsne1", "tsne2")
ggplot(d_tsne, aes(x=tsne1, y=tsne2, col = SUFFIX, label))+geom_point()


