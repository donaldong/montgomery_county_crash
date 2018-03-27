process.Off.Road.Description <- function(feature) {
  #' Process Light
  #'      keep top 2 Light categories, combine the rest into `Light Not Perfect`
  #'
  #' @param feature The raw Light from the data set
  #' @return vector of string.
  keep <- names(head(sort(table(feature), decreasing=TRUE), 1))
  result <- vector(mode="character", length=length(feature))
  for (i in 1:length(feature)) {
    if (feature[i] %in% keep) {
      result[i] = "EMPTY"
    } else {
      result[i] = "PARKING LOT"
    }
  }
  return(result)
}

if (!exists(".no.output")) {
  load("RData/Off.Road.Description.raw.RData")
  feature <- process.Off.Road.Description(feature)
  save(feature, file="RData/Off.Road.Description.RData")
}
