process.Driver.Distracted.By <- function(feature) {
    #' Process Driver Distracted By
    #'      keep top 3 distraction, combine the rest into `Other`
    #'
    #' @param feature The raw column from the data set
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
    load("RData/Driver.Distracted.By.raw.RData")
    feature <- process.Driver.Distracted.By(feature)
    save(feature, file="RData/Driver.Distracted.By.RData")
}

