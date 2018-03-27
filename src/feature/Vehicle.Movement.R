process.Vehicle.Movement <- function(feature) {
  #' Process Light
  #'      keep top 2 Light categories, combine the rest into `Light Not Perfect`
  #'
  #' @param feature The raw Light from the data set
  #' @return vector of string.
  keep <- names(head(sort(table(feature), decreasing=TRUE), 5))
  unknown <- c("UNKNOWN", "OTHER", "N/A")
  result <- vector(mode="character", length=length(feature))
  for (i in 1:length(feature)) {
    if (feature[i] %in% keep) {
      result[i] = as.character(feature[i])
    } else if (feature[i] %in% unknown) {
      result[i] = "UNKNOWN"
    }
  }
  return(result)
}

if (!exists(".no.output")) {
  load("RData/Vehicle.Movement.raw.RData")
  feature <- process.Vehicle.Movement(feature)
  save(feature, file="RData/Vehicle.Movement.RData")
}
