plot.Driver.At.Fault <- function(feature) {
    t <- sort(table(feature), decreasing=TRUE)
    par(mar=c(5,8,5,2))
    barplot(t, horiz=TRUE, las=1, main="Driver At Fault")
}

if (!exists(".no.output")) {
    load("RData/Driver.At.Fault.raw.RData")
    pdf(file="Driver.At.Fault.RPlot.pdf")
    plot.Driver.At.Fault(feature)
}

