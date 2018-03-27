process.Route.Type <- function(feature) {
  #' Process Light
  #'      keep top 2 Light categories, combine the rest into `Light Not Perfect`
  #'
  #' @param feature The raw Light from the data set
  #' @return vector of string.
  #' 
  keep <- names(head(sort(table(feature), decreasing=TRUE), 5))
  empty <- ""
  result <- vector(mode="character", length=length(feature))
  for (i in 1:length(feature)) {
    if (feature[i] %in% keep) {
      result[i] = as.character(feature[i])
    } else if (feature[i] %in% empty) {
      result[i] = "Empty"
    } else {
      result[i] = "Other"
    }
  }
  return(result)
}

if (!exists(".no.output")) {
  load("RData/Route.Type.raw.RData")
  feature <- process.Route.Type(feature)
  save(feature, file="RData/Route.Type.RData")
}
