plot.Light <- function(feature) {
  t <- sort(table(feature), decreasing=TRUE)
  par(mar=c(5,12,5,2))
  barplot(t, horiz=TRUE, las=1, main="Light")
}

if (!exists(".no.output")) {
  load("RData/Light.RData")
  pdf(file="Light.RPlot.pdf")
  plot.Light(feature)
}
