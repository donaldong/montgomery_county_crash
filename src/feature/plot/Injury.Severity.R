plot.Injury.Severity <- function(feature) {
    t <- sort(table(feature), decreasing=TRUE)
    par(mar=c(5,15,5,2))
    barplot(t, horiz=TRUE, las=1, main="Injury Severity")
}

if (!exists(".no.output")) {
    load("RData/Injury.Severity.raw.RData")
    pdf(file="Injury.Severity.RPlot.pdf")
    plot.Injury.Severity(feature)
}

