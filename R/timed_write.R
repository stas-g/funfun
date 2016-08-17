#' Write a message with a time stamp to a file; useful for creating a script log
#' @param x Anything  you would like to write to a file
#' @param file Path to a file where to write x
#' @param append TRUE if would like to add to file rather than overwrite it or create a new one
#' @return NULL
#' @author N. F. Grinberg, \email{ng414@medschl.cam.ac.uk}
#' @export
#' @examples
#' # Write "Start: <time now>" to log_file.txt 
#' # (overwrite if it exists or create if it doesn't)
#' timed.write('Start', file = 'log_file.txt', append = FALSE)
#'
#'# Append "Done: <time now>" to log_file.txt
#' file.create('log_file.txt')
#' timed.write('Done', file = 'log_file.txt')
#' @export

timed.write <- function(x, file, append = TRUE){ 
  write(paste0(x, ": " , Sys.time()), file = file, append = append)
}