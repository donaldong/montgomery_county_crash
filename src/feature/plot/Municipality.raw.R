plot.Municipality.raw <- function(feature) {
  t <- sort(table(feature), decreasing=TRUE)
  par(mar=c(5,12,5,2))
  barplot(t, horiz=TRUE, las=1, main="Municipality (raw)")
}

if (!exists(".no.output")) {
  load("RData/Municipality.raw.RData")
  pdf(file="Municipality.raw.RPlot.pdf")
  plot.Municipality.raw(feature)
}
