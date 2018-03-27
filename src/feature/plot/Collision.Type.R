plot.Collision.Type <- function(feature) {
  t <- sort(table(feature), decreasing=TRUE)
  par(mar=c(5,12,5,2))
  barplot(t, horiz=TRUE, las=1, main="Collision.Type")
}

if (!exists(".no.output")) {
  load("RData/Collision.Type.RData")
  pdf(file="Collision.Type.RPlot.pdf")
  plot.Collision.Type(feature)
}