#' drop_NA
#'
#' @description  Drop the null values in a data frame.
#'
#' @param df The manipulated data frame.
#' @param threshold A threshold value that tolerates null values.
#'                  threshold=0.1 by default.
#' @param null The format of invalid values, such as NA, NULL, "...", etc.
#'
#' @return Return the processed data frame.
#'
#'
#' @examples
#' world_data=drop_NA(world_data_raw,null="..")
drop_NA = function(df, threshold=0.1, null=NA){
  num_obs=nrow(df)
  df = na_if(df, null)
  df_drop=df[,colSums(is.na(df))<num_obs*threshold]
  return(df_drop)
}
