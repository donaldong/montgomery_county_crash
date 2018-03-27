process.Traffic.Control <- function(feature) {
    #' Process Traffic.Controls
    #'      keep top 3 cats, combine the rest into `Other`
    #'
    #' @param feature The raw Traffic.Controls from the data set
    #' @return vector of string.
    keep <- c("NO CONTROLS", "TRAFFIC SIGNAL", "STOP SIGN")
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
    load("RData/Traffic.Control.raw.RData")
    feature <- process.Traffic.Control(feature)
    save(feature, file="RData/Traffic.Control.RData")
}

