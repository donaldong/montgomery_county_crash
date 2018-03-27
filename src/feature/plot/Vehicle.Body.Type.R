plot.Vehicle.Body.Type <- function(feature) {
    t <- sort(table(feature), decreasing=TRUE)
    t <- head(t, 20)
    par(mar=c(5,15,5,2))
    barplot(t, horiz=TRUE, las=1, main="Vehicle Body Type")
}

if (!exists(".no.output")) {
    load("RData/Vehicle.Body.Type.RData")
    pdf(file="Vehicle.Body.Type.RPlot.pdf")
    plot.Vehicle.Body.Type(feature)
}

