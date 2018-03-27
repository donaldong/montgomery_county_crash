plot.Traffic.Control <- function(feature) {
    t <- sort(table(feature), decreasing=TRUE)
    par(mar=c(5,12,4,2))
    barplot(t, horiz=TRUE, las=1, main="Traffic Control")
}

if (!exists(".no.output")) {
    load("RData/Traffic.Control.RData")
    pdf(file="Traffic.Control.RPlot.pdf")
    plot.Traffic.Control(feature)
}

