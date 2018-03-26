process.Drivers.License.State <- function(feature) {
    #' Process Drivers License State
    #'      Merge states with less than 50 occurence into `Other`
    #'
    #' @param feature The raw column from the data set
    #' @return vector of string.
    t <- table(feature)
    keep <- names(t[t >= 50])
    result <- vector(mode="character", length=length(feature))
    for (i in 1:length(feature)) {
        name <- as.character(feature[i])
        if (name %in% keep && name != "") {
            result[i] = name
        } else {
            result[i] = "Other"
        }
    }
    return(result)
}

if (!exists(".no.output")) {
    load("RData/Drivers.License.State.raw.RData")
    feature <- process.Drivers.License.State(feature)
    save(feature, file="RData/Drivers.License.State.RData")
}

t <- sort(table(feature), decreasing=TRUE)
par(las=2)
par(mar=c(5,15,4,2))
barplot(sort(table(feature), decreasing=TRUE), horiz=TRUE)
