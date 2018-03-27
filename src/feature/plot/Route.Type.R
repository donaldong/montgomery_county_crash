plot.Route.Type <- function(feature) {
  t <- sort(table(feature), decreasing=TRUE)
  par(mar=c(5,12,5,2))
  barplot(t, horiz=TRUE, las=1, main="Route.Type")
}

if (!exists(".no.output")) {
  load("RData/Route.Type.RData")
  pdf(file="Route.Type.RPlot.pdf")
  plot.Route.Type(feature)
}
