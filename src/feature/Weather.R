process.Weather <- function(feature) {
  #' Process Weatger
  #'      keep 3 categories, combine Foggy with cloudy,
  #'      add a `Severe` category
  #'      add an `Other` category
  #'
  #' @param feature The raw Weather from the data set
  #' @return vector of string.
  keep <- names(head(sort(table(feature), decreasing=TRUE), 2)) #here we process
  cloudy <- c("FOGGY", "CLOUDY")
  severe <- c("SNOW", "WINTRY MIX", "SLEET", "BLOWING SNOW", "SEVERE WINDS", "BLOWING SAND, SOIL, DIRT")
  result <- vector(mode="character", length=length(feature)) #length of the new vector
  for (i in 1:length(feature)) {
    if (feature[i] %in% keep) {
      result[i] = as.character(feature[i])
    } else if (feature[i] %in% severe) {
      result[i] = "SEVERE"
    } else if (feature[i] %in% cloudy) {
      result[i] = "CLOUDY"
    }else { 
      result[i] = "OTHER" 
    }
  }
  return(result)
}

if (!exists(".no.output")) {
  load("RData/Weather.raw.RData")
  feature <- process.Weather(feature)
  save(feature, file="RData/Weather.RData")
}


#     categories     #
# Other # 4, 8 & 9
# Severe # 5, 7, 10, 11, 12, 13
# Clear #1
# Cloudy += Foggy # 3&6
# Raining #1