process.Circumstance <- function(feature) {
    #' Process Circumstance
    #'      keep top 3 names, combine the rest into `Other`
    #'
    #' @param feature The raw Circumstance from the data set
    #' @return hast table A table where key is the circumstance, value is a vector of row id.
    circ <- new.env(hash=TRUE)
    for (i in 1:length(feature)) {
        tokens <- strsplit(as.character(feature[i]), ", ")[[1]]
        for (token in tokens) {
            if (is.null(circ[[token]])) {
                circ[[token]] = i
            } else {
                circ[[token]] = c(circ[[token]], i)
            }
        }
    }
    return(circ)
}

if (!exists(".no.output")) {
    load("RData/Circumstance.raw.RData")
    feature <- process.Circumstance(feature)
    save(feature, file="RData/Circumstance.RData")
}
