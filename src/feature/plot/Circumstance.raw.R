plot.Circumstance.raw <- function(feature) {
    t <- sort(table(feature), decreasing=TRUE)
    t <- head(t, 30)
    par(mar=c(4,30,4,2))
    barplot(t, horiz=TRUE, las=1, main="Circumstance (Raw, top 30)")
}

if (!exists(".no.output")) {
    load("RData/Circumstance.raw.RData")
    pdf(file="Circumstance.raw.RPlot.pdf", width=10)
    plot.Circumstance.raw(feature)
}

