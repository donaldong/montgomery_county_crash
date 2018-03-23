plot.ACRS.Report.Type <- function(feature) {
    t <- sort(table(feature), decreasing=TRUE)
    par(mar=c(5,12,5,2))
    barplot(t, horiz=TRUE, las=1, main="ACRS Report Type")
}

if (!exists(".no.output")) {
    load("RData/ACRS.Report.Type.raw.RData")
    pdf(file="ACRS.Report.Type.RPlot.pdf")
    plot.ACRS.Report.Type(feature)
}
