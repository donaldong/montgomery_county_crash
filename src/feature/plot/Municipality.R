plot.Municipality <- function(feature) {
  t <- sort(table(feature), decreasing=TRUE)
  par(mar=c(5,12,5,2))
  barplot(t, horiz=TRUE, las=1, main="Municipality")
}

if (!exists(".no.output")) {
  load("RData/Municipality.RData")
  pdf(file="Municipality.RPlot.pdf")
  plot.Municipality(feature)
}
