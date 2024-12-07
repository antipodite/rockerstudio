##
## Install R packages, for use with Dockerfile
##

## CRAN
install.packages(c(
    'tidyverse',
    'ggplot2',
    'sf',
    'rnaturalearth',
    'rnaturalearthdata',
    'devtools',
    'elevatr',
    'viridis',
    'FactoMineR',
    'ape',
    'phytools',
    'caper',
    'BiocManager',
    "DescTools",
    "ggforce",
    "klaR",
    "lingtypology",
    "testit",
    "vegan",
    "xtable"
))
## Bioconductor
BiocManager::install(c("ggtree", "treeio"))

## Github
remotes::install_github("ropensci/rnaturalearthhires")

