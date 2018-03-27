plot.Non.Motorist.Substance.Abuse.raw <- function(feature) {
    t <- sort(table(feature), decreasing=TRUE)
    par(mar=c(5,19,5,2))
    barplot(t, horiz=TRUE, las=1, main="Non Motorist Substance Abuse (raw)")
}

if (!exists(".no.output")) {
    load("RData/Non.Motorist.Substance.Abuse.raw.RData")
    pdf(file="Non.Motorist.Substance.Abuse.raw.RPlot.pdf", width=10)
    plot.Non.Motorist.Substance.Abuse.raw(feature)
}

