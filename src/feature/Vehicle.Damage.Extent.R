process.Vehicle.Damage.Extent <- function(feature) {
    #' Process Vehicle.Damage.Extents
    #'     combine `OTHER`, `N/A`, `UNKNOWN` into `Other` 
    #'
    #' @param feature The raw Vehicle.Damage.Extents from the data set
    #' @return vector of string.
    combine <- c("OTHER", "N/A", "UNKNOWN")
    result <- vector(mode="character", length=length(feature))
    for (i in 1:length(feature)) {
        if (!feature[i] %in% combine) {
            result[i] = as.character(feature[i])
        } else {
            result[i] = "Other"
        }
    }
    return(result)
}

if (!exists(".no.output")) {
    load("RData/Vehicle.Damage.Extent.raw.RData")
    feature <- process.Vehicle.Damage.Extent(feature)
    save(feature, file="RData/Vehicle.Damage.Extent.RData")
}

