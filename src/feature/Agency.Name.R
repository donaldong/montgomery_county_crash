process.Agency.Name <- function(feature) {
    #' Process Agency Names
    #'      keep top 3 agency names, combine the rest into `Other`
    #'
    #' @param feature The raw Agency Names from the data set
    #' @return vector of string.
    keep <- names(head(sort(table(feature), decreasing=TRUE), 3))
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
    load("RData/Agency.Name.raw.RData")
    feature <- process.Agency.Name(feature)
    save(feature, file="RData/Agency.Name.RData")
}
