plot.Collision.Type.raw <- function(feature) {
  t <- sort(table(feature), decreasing=TRUE)
  par(mar=c(5,12,5,2))
  barplot(t, horiz=TRUE, las=1, main="Collision.Type (raw)")
}

if (!exists(".no.output")) {
  load("RData/Collision.Type.raw.RData")
  pdf(file="Collision.Type.raw.RPlot.pdf")
  plot.Collision.Type.raw(feature)
}