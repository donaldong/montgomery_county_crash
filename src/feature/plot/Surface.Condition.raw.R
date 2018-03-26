plot.Surface.Condition.raw <- function(feature) {
  t <- sort(table(feature), decreasing=TRUE)
  par(mar=c(5,12,5,2))
  barplot(t, horiz=TRUE, las=1, main="Surface.Condition (raw)")
}

if (!exists(".no.output")) {
  load("RData/Surface.Condition.raw.RData")
  pdf(file="Surface.Condition.raw.RPlot.pdf")
  plot.Surface.Condition.raw(feature)
}
