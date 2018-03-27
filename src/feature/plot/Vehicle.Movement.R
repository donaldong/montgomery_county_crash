plot.Vehicle.Movement <- function(feature) {
  t <- sort(table(feature), decreasing=TRUE)
  par(mar=c(5,12,5,2))
  barplot(t, horiz=TRUE, las=1, main="Vehicle.Movement")
}

if (!exists(".no.output")) {
  load("RData/Vehicle.Movement.RData")
  pdf(file="Vehicle.Movement.RPlot.pdf")
  plot.Vehicle.Movement(feature)
}
