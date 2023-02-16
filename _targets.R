library("targets")

# Packages
source("packages.R")

# source workflow functions
R.utils::sourceDirectory("R")

tar_option_set(format = "qs")
tar_option_set(debug = "spc_tbl")

options(future.rng.onMisuse = "ignore")

future::plan(future::multisession, workers = 8L)


## Define the pipeline =========================================================

## Each target list defines distinct but related task sets of
## the pipeline. Eeach list includes targets, R objects, and a recipe
## how to build them using functions (either low-level one in package
## or workflow-specific functions contained in `.R` files in the
## folder ./R)

pip_spec_in <- list(
  tar_target(
    spec_in,
    read_all_opus_files(
      dsn = file.path("data", "spectra")
    )
  ),
  tar_target(
    spec_dt,
    convert_spec_list_to_dt(
      spec_in
    )
  ),
  tar_target(
    preproc_plan,
    make_preproc_plan()
  ),
  tar_target(
    spec_proc,
    specprepper::sg_apply(
      X = spec_dt$.predictor_values[[1]],
      dt_sg_plan = preproc_plan
    )
  )
)
