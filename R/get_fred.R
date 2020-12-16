#' get_fred
#'
#' @description  Get time series from FRED, using API
#'
#' @param series_id The series id in FRED.
#' @param start_date The start date of this time series.
#' @param end_date The end date of this time series.
#'
#' @return Return a dataframe containing the time series as well as corresponding time.
#'
#' @examples
#' maize_price_df = get_fred("PMAIZMTUSDM","2011-10-01","2020-10-01")
#'
get_fred = function(series_id, start_date,end_date){
  URL = "https://api.stlouisfed.org/fred/series/observations"
  parameters = paste("?series_id=", series_id,
                     "&api_key=","cc85e79964edd787615405e0fdf59686",
                     "&file_type=json",
                     "&observation_start=", start_date,
                     "&observation_end=", end_date,
                     sep = "")
  PATH = paste(URL, parameters, sep="")
  initialquerry = jsonlite::fromJSON(PATH)
  df = as.data.frame(initialquerry$observations)
  return(df)
}
