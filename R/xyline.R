#' Adds the y = x plot to a figure currently in device
#'
#' @return NULL
#' @author N. F. Grinberg, \email{ng414@medschl.cam.ac.uk}
#' @export
#'
#' @examples
#' plot(rnorm(100), rnorm(100))
#' xyplot()
#'
xyline <- function(){
  if(dev.cur() == 1) stop('No figure!')
  abline(0, 1, lty = 2, col = 'firebrick1')
}
