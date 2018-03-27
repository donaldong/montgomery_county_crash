plot.Off.Road.Description.raw <- function(feature) {
  t <- sort(table(feature), decreasing=TRUE)
  par(mar=c(5,12,5,2))
  barplot(t, horiz=TRUE, las=1, main="Off.Road.Description (raw)")
}

if (!exists(".no.output")) {
  load("RData/Off.Road.Description.raw.RData")
  pdf(file="Off.Road.Description.raw.RPlot.pdf")
  plot.Off.Road.Description.raw(feature)
}
