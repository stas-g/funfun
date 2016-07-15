#' The \eqn{f(x) = max\{x, 0\}} function
#' @param x Any numeric/integer object
#' @return A maximum of the argument, capped at 0.
#' @author N. F. Grinberg, \email{ng414@@medsch.cam.ac.uk}
#' @keywords max
#' @export
#' @examples
#' maxz(10)
#' maxz(-5 : 5)
#'
#' @export

maxz <- function(x){
	sapply(x, FUN = function(z) ifelse(z > 0, z, 0))
}
