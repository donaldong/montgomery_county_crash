plot.Vehicle.Body.Type.raw <- function(feature) {
    t <- sort(table(feature), decreasing=TRUE)
    t <- head(t, 20)
    par(mar=c(5,15,5,2))
    barplot(t, horiz=TRUE, las=1, main="Vehicle Body Type (Raw)")
}

if (!exists(".no.output")) {
    load("RData/Vehicle.Body.Type.raw.RData")
    pdf(file="Vehicle.Body.Type.raw.RPlot.pdf")
    plot.Vehicle.Body.Type.raw(feature)
}

