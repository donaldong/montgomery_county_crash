process.Vehicle.Movement <- function(feature) {
  #' Process Vehicle Movment
  #'     Keep the top 5 feature, merge the result into `Other` 
  #'
  #' @param feature The raw Light from the data set
  #' @return vector of string.
  keep <- names(head(sort(table(feature), decreasing=TRUE), 5))
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
  load("RData/Vehicle.Movement.raw.RData")
  feature <- process.Vehicle.Movement(feature)
  save(feature, file="RData/Vehicle.Movement.RData")
}
