plot.Related.Non.Motorist.raw <- function(feature) {
  t <- sort(table(feature), decreasing=TRUE)
  par(mar=c(5,12,5,2))
  barplot(t, horiz=TRUE, las=1, main="Related.Non.Motorist (raw)")
}

if (!exists(".no.output")) {
  load("RData/Related.Non.Motorist.raw.RData")
  pdf(file="Related.Non.Motorist.raw.RPlot.pdf")
  plot.Related.Non.Motorist.raw(feature)
}
