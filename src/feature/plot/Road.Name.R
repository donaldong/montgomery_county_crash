plot.Road.Name <- function(feature) {
  t <- sort(table(feature), decreasing=TRUE)
  par(mar=c(5,12,5,2))
  barplot(t, horiz=TRUE, las=1, main="Road.Name")
}

if (!exists(".no.output")) {
  load("RData/Road.Name.RData")
  pdf(file="Road.Name.RPlot.pdf")
  plot.Road.Name(feature)
}
