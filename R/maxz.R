#' The \eqn{f(x) = max\{x, 0\}} function
#' @param x Any numeric object including vectors and matrices
#' @return Returns argument if it's positive, or 0 otherwise
#' @author N. F. Grinberg, \email{ng414@@medschl.cam.ac.uk}
#' @keywords max
#' @export
#' @examples
#' maxz(10)
#' maxz(-5 : 5)
#' maxz(matrix(-10 : 9, nrow = 4))
#'
#' @export

maxz <- function(x){
  ifelse(x > 0, x, 0)
}
