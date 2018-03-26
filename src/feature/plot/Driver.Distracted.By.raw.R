plot.Driver.Distracted.By.raw <- function(feature) {
    t <- sort(table(feature), decreasing=TRUE)
    t <- head(t, 20)
    par(mar=c(5,25,5,2))
    barplot(t, horiz=TRUE, las=1, main="Driver Distracted By (raw)")
}

if (!exists(".no.output")) {
    load("RData/Driver.Distracted.By.raw.RData")
    pdf(file="Driver.Distracted.By.raw.RPlot.pdf", width=10)
    plot.Driver.Distracted.By.raw(feature)
}

