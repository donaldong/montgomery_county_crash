plot.Off.Road.Description <- function(feature) {
  t <- sort(table(feature), decreasing=TRUE)
  par(mar=c(5,12,5,2))
  barplot(t, horiz=TRUE, las=1, main="Off.Road.Description")
}

if (!exists(".no.output")) {
  load("RData/Off.Road.Description.RData")
  pdf(file="Off.Road.Description.RPlot.pdf")
  plot.Off.Road.Description(feature)
}
