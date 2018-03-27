process.Non.Motorist.Substance.Abuse <- function(feature) {
    #' Process Non.Motorist.Substance.Abuses
    #'      keep `NONE DETECTED`, combine the rest into `Other`
    #'
    #' @param feature The raw Non.Motorist.Substance.Abuses from the data set
    #' @return vector of string.
    keep <- "NONE DETECTED" 
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
    load("RData/Non.Motorist.Substance.Abuse.raw.RData")
    feature <- process.Non.Motorist.Substance.Abuse(feature)
    save(feature, file="RData/Non.Motorist.Substance.Abuse.RData")
}

