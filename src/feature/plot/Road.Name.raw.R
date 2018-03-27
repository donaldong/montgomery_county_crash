plot.Road.Name.raw <- function(feature) {
  t <- sort(table(feature), decreasing=TRUE)
  par(mar=c(5,12,5,2))
  barplot(t, horiz=TRUE, las=1, main="Road.Name (raw)")
}

if (!exists(".no.output")) {
  load("RData/Road.Name.raw.RData")
  pdf(file="Road.Name.raw.RPlot.pdf")
  plot.Road.Name.raw(feature)
}
