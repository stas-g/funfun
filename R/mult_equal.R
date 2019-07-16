#' Applies all.equal function to a list of vectors. Are they all the same? Multivariate extension of all.equal.
#'
#' @param x list of vectors to be compared. Will work with lists as well but element names will be ignored and only values (and their order) compared
#' @return logical TRUE/FALSE
#' @author N. F. Grinberg, \email{ng414@cam.ac.uk}
#' @export
#' @examples
#' mult.equal(list(1 : 4, 1 : 4, 3 : 4))
#' @export

mult.equal <- function(x) all.equal(Reduce(union, x), x[[which.min(lengths(x))]])
