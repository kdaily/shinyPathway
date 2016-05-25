#' @export
runExample <- function() {
  appDir <- system.file("shiny", package = "shinyPathway")
  if (appDir == "") {
    stop("Could not find example directory. Try re-installing `shinyPathway`.", call. = FALSE)
  }
  
  shiny::runApp(appDir, display.mode = "normal")
}
