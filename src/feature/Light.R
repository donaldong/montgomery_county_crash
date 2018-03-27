process.Light <- function(feature) {
  #' Process Light
  #'      keep top 2 Light categories, combine the rest into `Light Not Perfect`
  #'
  #' @param feature The raw Light from the data set
  #' @return vector of string.
  keep <- names(head(sort(table(feature), decreasing=TRUE), 2))
  result <- vector(mode="character", length=length(feature))
  for (i in 1:length(feature)) {
    if (feature[i] %in% keep) {
      result[i] = as.character(feature[i])
    } else {
      result[i] = "Light Not Perfect"
    }
  }
  return(result)
}

if (!exists(".no.output")) {
  load("RData/Light.raw.RData")
  feature <- process.Light(feature)
  save(feature, file="RData/Light.RData")
}
