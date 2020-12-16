#' imputation
#'
#' @description Several methods to impute the missing data
#'
#' @param df The manipulated data frame.
#' @param col The column with missing data needing imputing.
#' @param method The imputation method, "k-nearest", "mean", "median".
#'               method="k-nearest" by default.
#'
#' @return Return the processed data frame.
#'
#' @examples
#' world_data=drop_NA(world_data_raw,null="..")
#'
#' world=imputation(world_data,col=c(4,7))
#' world=imputation(world_data,col=c(2:7),method = "mean")
#' world=imputation(world_data,col=c(4:5),method = "median")
imputation=function(df,col,method="k-nearest"){

  df[,col] = sapply(df[,col], as.numeric)
  num_vars=ncol(df)

  if(method=="mean"){
    for(i in col){
      df[[i]][is.na(df[[i]])] = mean(df[[i]],na.rm=TRUE)
    }
  }

  if(method=="median"){
    for(i in col){
      df[[i]][is.na(df[[i]])] = median(df[[i]],na.rm=TRUE)
    }
  }

  if(method=="k-nearest"){
    df_knn = VIM::kNN(df,variable = colnames(df[,col]),k=5)
    df[,colnames(df[,col])]=df_knn[,colnames(df[,col])]
  }
  return(df)
}

