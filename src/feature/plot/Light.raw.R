plot.Light.raw <- function(feature) {
  t <- sort(table(feature), decreasing=TRUE)
  par(mar=c(5,12,5,2))
  barplot(t, horiz=TRUE, las=1, main="Light (raw)")
}

if (!exists(".no.output")) {
  load("RData/Light.raw.RData")
  pdf(file="Light.raw.RPlot.pdf")
  plot.Light.raw(feature)
}
