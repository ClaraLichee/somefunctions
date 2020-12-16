#' A random series plot
#'
#' @description Generate two series of normally distributed random number, each with ten numbers, and plot.
#'
#' @export A plot of these two random series.
#'
#' @examples
#' plot_rand()
plot_rand = function(){
  x = rnorm(10)
  y = rnorm(10)
  plot(x,y,pch=20,col="darkorange2",cex=1.5)
}
