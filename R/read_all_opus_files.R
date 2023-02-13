read_all_opus_files <- function(dsn = file.path("data", "spectra")) {
  data <- opusreader2::read_opus(dsn = dsn, parallel = TRUE)
  return(data)
}
