plot.Weather <- function(feature) {
  t <- sort(table(feature), decreasing=TRUE)
  par(mar=c(5,12,5,2))
  barplot(t, horiz=TRUE, las=1, main="Weather")
}

if (!exists(".no.output")) {
  load("RData/Weather.RData")
  pdf(file="Weather.RPlot.pdf")
  plot.Weather(feature)
}