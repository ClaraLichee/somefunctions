#' correlation plot
#'
#' @description In a dataset with many variables, select several variables with the highest correlation with one specific variable, which can be the dependent variable of the study.
#'              Draw the correlation plot of these selected independent variables.
#' @param dataset The dataset with many variables.
#' @param depvar The dependent variable.
#' @param n The number of independent variables.
#'
#' @export A correlation plot of selected independent variables.
#'
#' @examples
#' corrplot(house_data, "SalePrice", 10)
corrplot = function(dataset, depvar, n){
  numvar = which(sapply(dataset, is.numeric))
  all_num = dataset[,numvar]
  cor_num = cor(all_num, use="pairwise.complete.obs")
  cor_sorted = as.matrix(sort(cor_num[,depvar], decreasing = T))
  cor_high_var = rownames(cor_sorted)[2:n+1]
  mydata=dataset[,cor_high_var]
  cor_var=cor(mydata, use="pairwise.complete.obs")
  corrplot.mixed(cor_var,tl.col="black")
}
