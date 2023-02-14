make_preproc_plan <- function() {
  param_list <- make_sg_param_list()
  preproc_plan <- specprepper::sg_make_plan(param_list = param_list)
  return(preproc_plan)
}

make_sg_param_list <- function(sg_windows = c(
                                 5L, 9L, 13L, 15L, 17L, 19L, 21L,
                                 23L, 25L, 27L, 35L
                               )) {
  param_list <- list(
    sg_1 = list(m = 1L, p = c(2L, 3L), w = sg_windows),
    sg_2 = list(m = 2L, p = c(3L, 4L), w = sg_windows)
  )
  return(param_list)
}
