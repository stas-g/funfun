#' Calculate mean squared error (MSE) for vectors or matrices of observed and predicted values
#'
#' @param obs A vector or a matrix/df (samples in rows, individual variables in columns) of observed values
#' @param pred A vector or a matrix/df (samples in rows, individual variables in columns) of predicted values
#' @param rsq Calculate \eqn{R^2} (R-squared) instead of MSE? Defualt FALSE
#'
#' @return MSE or \eqn{R^2} (single value if vectors are passed or a vector of length \code{nrow(obs)} if matrices/df are passed, one value for each obs-pred column pair
#' @author N. F. Grinberg, \email{ng414@medschl.cam.ac.uk}
#' @keywords MSE, Rsq
#'
#' @examples
#' mod <- lm(mpg ~ ., data = mtcars)
#' summary(mod)$r.squared
#' calc.mse(mtcars$mpg, mod$fitted.values, rsq = TRUE)
#'
#' @export

calc.mse <- function(obs, pred, rsq = FALSE){
  if(is.vector(obs)) obs <- as.matrix(obs)
  if(is.vector(pred)) pred <- as.matrix(pred)

  n <- nrow(obs)
  rss <- colSums((obs - pred)^2, na.rm = TRUE)
  if(rsq == FALSE) rss/n else {
    tss <- diag(var(obs, na.rm = TRUE)) * (n - 1)
    1 - rss/tss
  }
}
