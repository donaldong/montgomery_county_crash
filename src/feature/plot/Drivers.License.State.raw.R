plot.Drivers.License.State.raw <- function(feature) {
    t <- sort(table(feature), decreasing=TRUE)
    t <- head(t, 20)
    par(mar=c(5,8,5,2))
    barplot(t, horiz=TRUE, las=1, main="Drivers License State (raw)")
}

if (!exists(".no.output")) {
    load("RData/Drivers.License.State.raw.RData")
    pdf(file="Drivers.License.State.raw.RPlot.pdf")
    plot.Drivers.License.State.raw(feature)
}

