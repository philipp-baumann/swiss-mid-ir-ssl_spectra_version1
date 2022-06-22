library("targets")

# Packages
source("packages.R")

# source workflow functions
R.utils::sourceDirectory("R")

tar_option_set(format = "qs")
tar_option_set(debug = "spc_tbl")

options(future.rng.onMisuse = "ignore")


## Define the pipeline =========================================================

## Each target list defines distinct but related task sets of
## the pipeline. Eeach list includes targets, R objects, and a recipe
## how to build them using functions (either low-level one in package
## or workflow-specific functions contained in .R files in the
## folder ./R)