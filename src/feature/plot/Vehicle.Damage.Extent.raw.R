plot.Vehicle.Damage.Extent.raw <- function(feature) {
    t <- sort(table(feature), decreasing=TRUE)
    t <- head(t, 20)
    par(mar=c(5,10,4,2))
    barplot(t, horiz=TRUE, las=1, main="Vehicle Damage Extent (raw)")
}

if (!exists(".no.output")) {
    load("RData/Vehicle.Damage.Extent.raw.RData")
    pdf(file="Vehicle.Damage.Extent.raw.RPlot.pdf")
    plot.Vehicle.Damage.Extent.raw(feature)
}

