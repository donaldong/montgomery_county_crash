plot.Traffic.Control.raw <- function(feature) {
    t <- sort(table(feature), decreasing=TRUE)
    par(mar=c(5,15,4,2))
    barplot(t, horiz=TRUE, las=1, main="Traffic Control (raw)")
}

if (!exists(".no.output")) {
    load("RData/Traffic.Control.raw.RData")
    pdf(file="Traffic.Control.raw.RPlot.pdf")
    plot.Traffic.Control.raw(feature)
}

