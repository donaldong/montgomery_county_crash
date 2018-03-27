process.Vehicle.Body.Type <- function(feature) {
    #' Process Vehicle.Body.Types
    #'      keep `PASSENGER CAR`, combine the rest into `Other`
    #'
    #' @param feature The raw Vehicle.Body.Types from the data set
    #' @return vector of string.
    keep <- "PASSENGER CAR" 
    result <- vector(mode="character", length=length(feature))
    for (i in 1:length(feature)) {
        if (feature[i] == keep) {
            result[i] = as.character(feature[i])
        } else {
            result[i] = "Other"
        }
    }
    return(result)
}

if (!exists(".no.output")) {
    load("RData/Vehicle.Body.Type.raw.RData")
    feature <- process.Vehicle.Body.Type(feature)
    save(feature, file="RData/Vehicle.Body.Type.RData")
}

