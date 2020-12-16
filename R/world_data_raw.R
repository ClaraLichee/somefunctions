#' World Health Data
#'
#' @format 259 X 69 dataframe
#'



world_data_raw = read.csv("World Health Data.csv")

usethis::use_data(world_data_raw, overwrite = TRUE)
