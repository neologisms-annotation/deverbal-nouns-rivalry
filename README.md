# Deverbal nouns rivalry between -age, -ion, and -ment in contemporary French
This repository stores:
- an annotation guide used to describe the semantic and syntactic properties of deverbal nouns and their base verb (annotation_guidelines.pdf),
- a R script used for the analyses of the data (),
- the full set of the data with examples (data_annotated.xlsx),
- the full set of the data formatted for the analysis (data_statistics.txt),
- barplots of the distribution of the data according to each analysed variable (graph_variables),
- a table providing information about the correlation between the analysed variables (variable_correlations.xlsx).

The columns of the two datasets presents:
- 'noun': deverbal novel word ending in -age, -ion, or -ment, sometimes followed by a number to distinguish the different meanings of a same deverbal form,
- 'verb': base verb from which the deverbal novel word is derived, sometimes followed by a number to distinguish the different meanings of a same form,
- 'ex_n': an example of the noun used in a sentence,
- 'suffix': the suffix (-age, -ion, or -ment) that was used to coin the noun,
- and the following properties : 'v_trans', 'v_dyn', 'v_dur', 'v_tel', 'v_post_phase', 'v_rol_suj', 'v_rol_obj', 'v_rol_obq',
  'nb_sens_n', 'n_onto', 'n_relation', 'n_dyn', 'n_dur', 'n_tel', 'n_post_phase', 'n_rol_arg1', 'n_rol_arg2' and 'n_rol_arg3'

Note that these properties are described more precisely in the annotation guidelines and in the article.

The figures provided in the folder 'graph_variables' contain the following abbreviation concering the following properties:
- verbal or nominal arguments (v_rol_subj, v_rol_obj, v_rol_obq, n_rol_arg1, n_rol_arg2, or n_rol_arg3):
  - agt: for argument that plays a role of agent
  - ben: for beneficiary
  - cau: for cause
  - des: for destination
  - exp: for experiencer
  - ins: for instrument
  - loc: for location
  - pat: for patient
  - pth: for path
  - pvt: for pivot
  - res: for result
  - src: for source
  . sti: for stimulus
  . thm: for theme
  . tpc: for topic
  - na: when there is no argumental role for the described property (NA)
- ontology of the noun (n_onto):
  - anm: for nouns that denotes animates
  - art: for artifact
  - art*cog: for nouns that denotes both artifacts and cognitive objects 
  - cog: for cognitive objects
  - cog*evt: for nouns that denotes both cognitive objects and events
  - dom: for domain
  - evt: for events
  - evt*sta: for nouns that denotes both events and states
  - nat: for natural objects
  - phn: for phenomenon
  - ppt: for property
  - sta: for state
- n_relation
  - ins: for instrument
  - loc: for location
  - man: for manner
  - res: for result
  - thm: for theme
  - tsp: for transposition

Note that these abbreviations are also described more precisely in the annotation guidelines.
