#' Adds the y = 0 and x = 0 lines to an existing plot
#'
#' @param xy logical (default FALSE): plot y = x line?
#' @return NULL
#' @author N. F. Grinberg, \email{ng414@medschl.cam.ac.uk}
#' @export
#'
#' @examples
#' plot(rnorm(100), rnorm(100))
#' axisplot()
#'
axisplot <- function(xy = FALSE){
  if(dev.cur() == 1) stop('No figure!')
  abline(h = 0, lty = 1, col = 'grey50')
  abline(v = 0, lty = 1, col = 'grey50')
  if(xy) abline(0, 1, lty = 2, col = 'firebrick1')
}
