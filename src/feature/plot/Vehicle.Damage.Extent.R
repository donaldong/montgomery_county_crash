plot.Vehicle.Damage.Extent <- function(feature) {
    t <- sort(table(feature), decreasing=TRUE)
    t <- head(t, 20)
    par(mar=c(5,10,4,2))
    barplot(t, horiz=TRUE, las=1, main="Vehicle Damage Extent")
}

if (!exists(".no.output")) {
    load("RData/Vehicle.Damage.Extent.RData")
    pdf(file="Vehicle.Damage.Extent.RPlot.pdf")
    plot.Vehicle.Damage.Extent(feature)
}

