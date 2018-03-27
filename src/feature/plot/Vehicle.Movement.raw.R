plot.Vehicle.Movement.raw <- function(feature) {
  t <- sort(table(feature), decreasing=TRUE)
  par(mar=c(5,12,5,2))
  barplot(t, horiz=TRUE, las=1, main="Vehicle.Movement (raw)")
}

if (!exists(".no.output")) {
  load("RData/Vehicle.Movement.raw.RData")
  pdf(file="Vehicle.Movement.raw.RPlot.pdf")
  plot.Vehicle.Movement.raw(feature)
}
