process.Collision.Type <- function(feature) {
  #' Process Light
  #'      keep top 2 Light categories, combine the rest into `Light Not Perfect`
  #'
  #' @param feature The raw Light from the data set
  #' @return vector of string.
  keep <- names(head(sort(table(feature), decreasing=TRUE), 2))
  other <- c("OTHER", "UNKNOWN", "N/A")
  single <- "SINGLE VEHICLE"
  left <- c("OPPOSITE DIR BOTH LEFT TURN", "SAME DIR BOTH LEFT TURN", "SAME DIR REND LEFT TURN", "ANGLE MEETS LEFT TURN", "SAME DIRECTION LEFT TURN")
  right <- c("SAME DIR REND RIGHT TURN", "ANGLE MEETS RIGHT TURN", "SAME DIRECTION RIGHT TURN")
  head.On <- c("HEAD ON", "HEAD ON LEFT TURN", "ANGLE MEETS LEFT HEAD ON")
  sideswipe <- c("OPPOSITE DIRECTION SIDESWIPE", "SAME DIRECTION SIDESWIPE")
  result <- vector(mode="character", length=length(feature))
  for (i in 1:length(feature)) {
    if (feature[i] %in% keep) {
      result[i] = as.character(feature[i])
    } else if (feature[i] %in% single) {
      result[i] = "SINGLE"
    }else if (feature[i] %in% head.On) {
      result[i] = "HEAD ON"
    } else if (feature[i] %in% other) {
      result[i] = "OTHER"
    }else if (feature[i] %in% left) {
      result[i] = "LEFT"
    }else if (feature[i] %in% right) {
      result[i] = "RIGHT"
    } else if (feature[i] %in% sideswipe) {
      result[i] = "SIDESWIPE"
    }
  }
  return(result)
}

if (!exists(".no.output")) {
  load("RData/Collision.Type.raw.RData")
  feature <- process.Collision.Type(feature)
  save(feature, file="RData/Collision.Type.RData")
}
