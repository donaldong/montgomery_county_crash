process.Crash.Date.Time <- function(feature) {
    #' Process Crash.Date.Times
    #'
    #' @param feature The raw Crash.Date.Times from the data set
    #' @return vector of datetime.
    feature <- as.character(feature)
    return (strptime(feature, "%m/%d/%Y %I:%M:%S %p", tz="EST5EDT"))
}

if (!exists(".no.output")) {
    load("RData/Crash.Date.Time.raw.RData")
    feature <- process.Crash.Date.Time(feature)
    save(feature, file="RData/Crash.Date.Time.RData")
}

