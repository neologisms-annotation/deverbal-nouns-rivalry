# Semantic rivalry between French deverbal neologisms in -age, -ion and -ment

This repository stores:
- the annotation guide that was used for the analysis of neologisms and base verbs (annotation_guidelines.pdf)
- the dataset with examples (data_annotated.xlsx)
- the dataset that was used for statistical analyses (data_statistics.txt)
- the R script that was used for statistical analyses (analysis_script.R)
- visual representations of the data according to each variable (graphics)

The dataset contains the following columns:
- 'noun': deverbal neologism ending in -age, -ion or -ment (numbers are used to differentiate meanings)
- 'verb': base verb (numbers are used to differentiate meanings)
- 'ex_n': example sentence
- 'suffix': suffix of the derivative
- 'v_trans': transitivity of the verb
- 'v_dyn': dynamicity of the verb
- 'v_dur': durativity of the verb
- 'v_tel': telicity of the verb
- 'v_post_phase': post-phase of the verb
- 'v_rol_suj': role of the subject argument
- 'v_rol_obj': role of the object argument
- 'v_rol_obq': role of the oblique argument
- 'nb_sens_n': number of nominal meanings
- 'n_onto': ontological type of the noun
- 'n_relation': relational type of the noun
- 'n_dyn': dynamicity of the noun
- 'n_dur': durativity of the noun
- 'n_tel': telicity of the noun
- 'n_post_phase': post-phase of the noun
- 'n_rol_arg1': role of the 1st argument of the noun
- 'n_rol_arg2': role of the 2nd argument of the noun
- 'n_rol_arg3': role of the 3rd argument of the noun

Abbreviations used in the graphics contained in the "graphics" folder are as follows:
- v_rol_subj, v_rol_obj, v_rol_obq, n_rol_arg1, n_rol_arg2, n_rol_arg3:
  - agt: agt
  - ben: beneficiary
  - cau: cause
  - des: destination
  - exp: experiencer
  - ins: instrument
  - loc: location
  - pat: patient
  - pth: path
  - pvt: pivot
  - res: result
  - src: source
  - sti: stimulus
  - thm: theme
  - tpc: topic
  - na: not applicable
- n_onto:
  - anm: animate
  - art: artifact
  - art * cog: artifact * cognitive
  - cog: cognitive
  - cog * evt: cognitive * event
  - dom: domain
  - evt: event
  - evt * sta: event * state
  - nat: natural
  - phn: phenomenon
  - ppt: property
  - sta: state
- n_relation:
  - ins: instrument
  - loc: location
  - man: manner
  - res: result
  - thm: theme
  - tsp: transposition
