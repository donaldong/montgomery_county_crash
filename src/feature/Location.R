process.Location <- function(feature) {
    #' Process Locations
    #'      Parse the location into numeric lat and long, where lat has odd indices
    #'
    #' @param feature The raw Locations from the data set
    #' @return vector of numeric.
    feature <- as.character(feature)
    parse <- function(s) {
        tokens <- strsplit(s, ", ")
        x <- tokens[[1]][1]
        y <- tokens[[1]][2]
        x <- substr(x, 2, nchar(x))
        y <- substr(y, 1, nchar(y) - 1)
        return(c(as.numeric(x), as.numeric(y)))
    }
    return(sapply(feature, parse))
}

if (!exists(".no.output")) {
    load("RData/Location.raw.RData")
    feature <- process.Location(feature)
    save(feature, file="RData/Location.RData")
}

