#' Calculate mean squared error for a vector of observed and predicted values
#' @param obs Stuff stuff
#' @param pred Stuff stuff stuff
#' @param rsq Stuff stuff stuff
#' @return mse or R^2 and stuff
#' @author N. F. Grinberg, \email{ng414@medschl.cam.ac.uk}
#' @keywords mse
#' @export
#' @examples
#'
#' @export

calc.mse <- function(obs, pred, rsq = FALSE){
  if(!is.matrix(obs) | !is.matrix(pred)){obs <- as.matrix(obs); pred <- as.matrix(pred)}
  rs <- (obs - pred)^2
  if(rsq == FALSE){colMeans(rs, na.rm = TRUE)}else{
    meanmat <- matrix(rep(colMeans(obs, na.rm = TRUE), nrow(obs)), nrow = nrow(obs), byrow = TRUE)
    1 - colSums(rs, na.rm = TRUE)/colSums((obs - meanmat)^2, na.rm = TRUE)
  }
}
