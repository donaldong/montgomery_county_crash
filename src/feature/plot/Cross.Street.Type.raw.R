plot.Cross.Street.Type.raw <- function(feature) {
  t <- sort(table(feature), decreasing=TRUE)
  par(mar=c(5,12,5,2))
  barplot(t, horiz=TRUE, las=1, main="Cross.Street.Type (raw)")
}

if (!exists(".no.output")) {
  load("RData/Cross.Street.Type.raw.RData")
  pdf(file="Cross.Street.Type.raw.RPlot.pdf")
  plot.Cross.Street.Type.raw(feature)
}