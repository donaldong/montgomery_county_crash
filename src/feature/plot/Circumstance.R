plot.Circumstance <- function(feature) {
    keys <- ls(feature)
    t <- vector()
    for (i in 1:length(keys)) {
        t[keys[i]] = length(feature[[keys[i]]])
    }
    t <- sort(t, decreasing=TRUE)
    par(mar=c(4,25,4,2))
    barplot(t, horiz=TRUE, las=1, main="Circumstance")
}

if (!exists(".no.output")) {
    load("RData/Circumstance.RData")
    pdf(file="Circumstance.RPlot.pdf", width=10)
    plot.Circumstance(feature)
}

