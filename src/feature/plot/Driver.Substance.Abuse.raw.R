plot.Driver.Substance.Abuse.raw <- function(feature) {
    t <- sort(table(feature), decreasing=TRUE)
    par(mar=c(4,16,4,2))
    barplot(t, horiz=TRUE, las=1, main="Driver Substance Abuse (raw)")
}

if (!exists(".no.output")) {
    load("RData/Driver.Substance.Abuse.raw.RData")
    pdf(file="Driver.Substance.Abuse.raw.RPlot.pdf", width=8)
    plot.Driver.Substance.Abuse.raw(feature)
}

