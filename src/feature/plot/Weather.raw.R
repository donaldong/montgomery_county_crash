plot.Weather.raw <- function(feature) {
  t <- sort(table(feature), decreasing=TRUE)
  par(mar=c(5,12,5,2))
  barplot(t, horiz=TRUE, las=1, main="Weather (raw)")
}

if (!exists(".no.output")) {
  load("RData/Weather.raw.RData")
  pdf(file="Weather.raw.RPlot.pdf")
  plot.Weather.raw(feature)
}