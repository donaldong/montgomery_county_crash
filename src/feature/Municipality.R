process.Municipality <- function(feature) {
  #' Process Light
  #'      keep top 2 Light categories, combine the rest into `Light Not Perfect`
  #'
  #' @param feature The raw Light from the data set
  #' @return vector of string.
  rockville <- "ROCKVILLE"
  gaithersburg <- "GAITHERSBURG"
  na <- "N/A"
  empty <- ""
  result <- vector(mode="character", length=length(feature))
  for (i in 1:length(feature)) {
    if (feature[i] %in% rockville) {
      result[i] = "ROCKVILLE"
    } else if(feature[i] %in% gaithersburg) {
      result[i] = "GAITHERSBURG"
    } else if(feature[i] %in% empty) {
      result[i] = "EMPTY"
    } else if(feature[i] %in% na) {
      result[i] = "N/A"
    } else {
      result[i] = "OTHER"
    }
  }
  return(result)
}

if (!exists(".no.output")) {
  load("RData/Municipality.raw.RData")
  feature <- process.Municipality(feature)
  save(feature, file="RData/Municipality.RData")
}
