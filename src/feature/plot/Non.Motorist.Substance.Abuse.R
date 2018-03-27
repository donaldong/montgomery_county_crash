plot.Non.Motorist.Substance.Abuse <- function(feature) {
    t <- sort(table(feature), decreasing=TRUE)
    par(mar=c(5,12,5,2))
    barplot(t, horiz=TRUE, las=1, main="Non Motorist Substance Abuse")
}

if (!exists(".no.output")) {
    load("RData/Non.Motorist.Substance.Abuse.RData")
    pdf(file="Non.Motorist.Substance.Abuse.RPlot.pdf")
    plot.Non.Motorist.Substance.Abuse(feature)
}

