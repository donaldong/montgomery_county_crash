plot.Related.Non.Motorist <- function(feature) {
  t <- sort(table(feature), decreasing=TRUE)
  par(mar=c(5,12,5,2))
  barplot(t, horiz=TRUE, las=1, main="Related.Non.Motorist")
}

if (!exists(".no.output")) {
  load("RData/Related.Non.Motorist.RData")
  pdf(file="Related.Non.Motorist.RPlot.pdf")
  plot.Related.Non.Motorist(feature)
}
