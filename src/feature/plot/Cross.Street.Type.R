plot.Cross.Street.Type <- function(feature) {
  t <- sort(table(feature), decreasing=TRUE)
  par(mar=c(5,12,5,2))
  barplot(t, horiz=TRUE, las=1, main="Cross.Street.Type")
}

if (!exists(".no.output")) {
  load("RData/Cross.Street.Type.RData")
  pdf(file="Cross.Street.Type.RPlot.pdf")
  plot.Cross.Street.Type (feature)
}
