convert_spec_list_to_dt <- function(spec_in) {
  # just get the most important elements
  spec_sel <- NULL
  elems_to_extract <- c("ab", "sample", "instrument", "info_block")
  spec_sel <- lapply(spec_in, function(x) x[elems_to_extract])
  spec_dt <- nest_spec_list_in_dt(spec_sel)
  return(spec_dt)
}

nest_spec_list_in_dt <- function(spec_in) {
  .idx_row <- seq_along(spec_in)
  .predictor_values <- lapply(spec_in, "ab")
  dt <- data.table::data.table(
    .idx_row = .idx_row,
    .predictor_values = .predictor_values
  )
  return(dt)
}
