process.Cross.Street.Type <- function(feature) {
  #' Process Light
  #'      keep top 2 Light categories, combine the rest into `Light Not Perfect`
  #'
  #' @param feature The raw Light from the data set
  #' @return vector of string.
  keep <- names(head(sort(table(feature), decreasing=TRUE), 2))
  empty <- c("","Unknown")
  result <- vector(mode="character", length=length(feature))
  for (i in 1:length(feature)) {
    if (feature[i] %in% empty) {
      result[i] = "Unknown"
    } else {
      result[i] = as.character(feature[i])
    }
  }
  return(result)
}

if (!exists(".no.output")) {
  load("RData/Cross.Street.Type.raw.RData")
  feature <- process.Cross.Street.Type(feature)
  save(feature, file="RData/Cross.Street.Type.RData")
}
