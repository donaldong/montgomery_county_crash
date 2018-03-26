plot.Driver.Substance.Abuse <- function(feature) {
    t <- sort(table(feature), decreasing=TRUE)
    par(mar=c(4,10,4,2))
    barplot(t, horiz=TRUE, las=1, main="Driver Substance Abuse")
}

if (!exists(".no.output")) {
    load("RData/Driver.Substance.Abuse.RData")
    pdf(file="Driver.Substance.Abuse.RPlot.pdf")
    plot.Driver.Substance.Abuse(feature)
}

