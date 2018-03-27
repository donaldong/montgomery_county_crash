plot.Route.Type.raw <- function(feature) {
  t <- sort(table(feature), decreasing=TRUE)
  par(mar=c(5,12,5,2))
  barplot(t, horiz=TRUE, las=1, main="Route.Type (raw)")
}

if (!exists(".no.output")) {
  load("RData/Route.Type.raw.RData")
  pdf(file="Route.Type.raw.RPlot.pdf")
  plot.Route.Type.raw(feature)
}
