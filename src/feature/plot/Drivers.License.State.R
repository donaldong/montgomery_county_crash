plot.Drivers.License.State.raw <- function(feature) {
    t <- sort(table(feature), decreasing=TRUE)
    par(mar=c(5,8,5,2))
    barplot(t, horiz=TRUE, las=1, main="Drivers License State")
}

if (!exists(".no.output")) {
    load("RData/Drivers.License.State.RData")
    pdf(file="Drivers.License.State.RPlot.pdf")
    plot.Drivers.License.State.raw(feature)
}

