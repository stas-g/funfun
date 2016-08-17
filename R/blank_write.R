#' Write a blank line to a file; useful for creating a script log
#' @param file Path to a file
#' @param append TRUE if would like to add to file rather than overwrite it or create a new one
#' @return NULL
#' @author N. F. Grinberg, \email{ng414@medschl.cam.ac.uk}
#' @export
#' @examples
#' # Append a blank line to log_file.txt 
#' blank.write(file = 'log_file.txt', append = FALSE)
#' 
#' @export

blank.write <- function(file, append = TRUE){
  write('', file = file, append = append)
}