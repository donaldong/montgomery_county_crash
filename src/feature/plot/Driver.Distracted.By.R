plot.Driver.Distracted.By <- function(feature) {
    t <- sort(table(feature), decreasing=TRUE)
    t <- head(t, 20)
    par(mar=c(5,15,5,2))
    barplot(t, horiz=TRUE, las=1, main="Driver Distracted By")
}

if (!exists(".no.output")) {
    load("RData/Driver.Distracted.By.RData")
    pdf(file="Driver.Distracted.By.RPlot.pdf", width=9)
    plot.Driver.Distracted.By(feature)
}

