process.Surface.Condition <- function(feature) {
  #' Process Surface.Condition
  #'      keep top 2 surface conditions, combine the rest into `Other`
  #'
  #' @param feature The raw Surface.Condition from the data set
  #' @return hast table A table where key is the surface.Condition, value is a vector of row id.
  keep <- names(head(sort(table(feature), decreasing=TRUE), 2))
  result <- vector(mode="character", length=length(feature))
  for (i in 1:length(feature)) {
    if (feature[i] %in% keep) {
      result[i] = as.character(feature[i])
    } else {
      result[i] = "Other"
    }
  }
  return(result)
}

if (!exists(".no.output")) {
  load("RData/Surface.Condition.raw.RData")
  feature <- process.Surface.Condition(feature)
  save(feature, file="RData/Surface.Condition.RData")
}
