process.Driver.Substance.Abuse <- function(feature) {
    #' Process Driver Substance Abuse
    #'      Merge the rest except for `NONE DETECTED` into `DUI`
    #'
    #' @param feature The raw column from the data set
    #' @return vector of string.
    keep <- "NONE DETECTED"
    other <- c("N/A", "OTHER", "UNKNOWN") 
    result <- vector(mode="character", length=length(feature))
    for (i in 1:length(feature)) {
        if (feature[i] == keep) {
            result[i] <- keep
        } else if (feature[i] %in% other) {
            result[i] <- "OTHER"  
        } else {
            result[i] <- "DUI"
        }
    }
    return(result)
}

if (!exists(".no.output")) {
    load("RData/Driver.Substance.Abuse.raw.RData")
    feature <- process.Driver.Substance.Abuse(feature)
    save(feature, file="RData/Driver.Substance.Abuse.RData")
}

