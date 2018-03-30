process.Route.Type <- function(feature) {
  #' Process Light
  #'      keep top 2 Light categories, combine the rest into `Light Not Perfect`
  #'
  #' @param feature The raw Light from the data set
  #' @return vector of string.
  #' 
  dat = head(sort(table(feature), decreasing=TRUE), 5)
  keep <- names(dat[1:2])
  keep <- c(keep, names(dat[4:5]))
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
  load("RData/Route.Type.raw.RData")
  feature <- process.Route.Type(feature)
  save(feature, file="RData/Route.Type.RData")
}
