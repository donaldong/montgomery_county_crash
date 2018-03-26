plot.Surface.Condition <- function(feature) {
  t <- sort(table(feature), decreasing=TRUE)
  par(mar=c(5,12,5,2))
  barplot(t, horiz=TRUE, las=1, main="Surface.Condition")
}

if (!exists(".no.output")) {
  load("RData/Surface.Condition.RData")
  pdf(file="Surface.Condition.RPlot.pdf")
  plot.Surface.Condition(feature)
}
