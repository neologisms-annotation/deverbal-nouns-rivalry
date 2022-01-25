#####################################
### Semantic rivalry between French deverbal neologisms in -age, -ion and -ment
###
### January 2022
#####################################

##############################################
# IMPORT AND PREPARE DATA
##############################################

# Step 1: set working directory

# Step 2: load the data
data <- read.table("affrix_publi1_dataset.txt", header = TRUE, stringsAsFactors = TRUE )
summary(data)

# Step 3: remove variable (column) no under study
data2=data[,-1]

##############################################
# PART 1: CORRELATION ANALYSIS
##############################################

library("rcompanion")

# We choose all pairwise association between the properties
cont_table <- table(data$v_dyn, data$v_dur)

chisq.test(cont_table, correct = TRUE)
chisq.test(cont_table, simulate.p.value = TRUE)
cramerV(cont_table)



##############################################
# PART 2: SUPERVISED METHOD -  RANDOM FOREST
##############################################

# Load package
library(party)

# Step 1: run random forest
set.seed(10)
rf <- cforest(suffix ~ ., controls = cforest_unbiased(), data=data2)

# Step 2: Confusion matrix
oobPredicted=predict(rf,OOB=T)
library(caret)
(cm <- confusionMatrix(data = oobPredicted, reference = data2$suffix))

# Step 3: variable importance
imp <- varimp(rf, conditional = TRUE)
dotchart(sort(imp), main = "Variable importance")



##########################################################
# PART 3: UNSUPERVISED METHODs - HIERARCHICAL CLUSTERING
##########################################################


# Step 1: removing variable with suffix and create suffix labels 
data3 <- data2[, -1]
SUFFIX <- data2[, 1]

# Step 2: distance matrix
library(cluster)
dist <-daisy(data3)

# Step 3: run clustering
suffix = hclust(dist, method = "ward.D2")

# Step 4: plot results
plot(suffix)

# Step 5: split into 3 groups
grps = cutree(suffix, k=3)

# Step 6: table with clusters and real suffixes
table(grps, SUFFIX)



#########################################
# PART 4: UNSUPERVISED METHODs - t-SNE 
#########################################

# load package 
library(Rtsne)

# Step 1: run t-SNE
set.seed(1)
resTSNE <-  Rtsne(mdist2, perplexity=10, is_distance = TRUE, pca = FALSE)

# Step 2: visualize t-SNE with marked real suffixes
library(ggplot2)
d_tsne <- data.frame(resTSNE$Y)
names(d_tsne) <-  c("tsne1", "tsne2")
ggplot(d_tsne, aes(x=tsne1, y=tsne2, col = SUFFIX, label))+geom_point()

