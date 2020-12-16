#' The Ames Housing dataset
#'
#' @format 1460 X 81 dataframe.
#'
#' \describe{
#' \item{SalePrice}{The property's sale price in dollars. This is the target variable.}
#' \item{MSSubClass}{The building class}
#' \item{MSZoning}{The general zoning classification}
#' \item{LotFrontage}{Linear feet of street connected to property}
#' \item{LotArea}{Lot size in square feet}
#' \item{Street}{Type of road access}
#' \item{YearBuilt}{Original construction date}
#' .
#' .
#' .
#' }


house_data = read.csv("house price.csv")
usethis::use_data(house_data, overwrite = TRUE)
