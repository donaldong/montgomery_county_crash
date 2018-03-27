process.Related.Non.Motorist <- function(feature) {
  #' Process Related.Non.Motorist
  #'      keep Pedestrian and other.
  #'      Add an empty category.
  #'
  #' @param feature The raw Related.Non.Motorist from the data set
  #' @return vector of string.
  empty <- ""
  pedestrian <- "PEDESTRIAN"
  result <- vector(mode="character", length=length(feature))
  for (i in 1:length(feature)) {
    if (feature[i] %in% pedestrian) {
      result[i] = "PEDESTRIAN"
    } else if (feature[i] %in% empty) {
      result[i] = "EMPTY"
    } else {
      result[i] = "OTHER"
    }
  }
  return(result)
}

if (!exists(".no.output")) {
  load("RData/Related.Non.Motorist.raw.RData")
  feature <- process.Related.Non.Motorist(feature)
  save(feature, file="RData/Related.Non.Motorist.RData")
}
