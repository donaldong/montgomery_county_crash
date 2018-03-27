plot.Cross.Street.Name.raw <- function(feature) {
  t <- sort(table(feature), decreasing=TRUE)
  par(mar=c(5,12,5,2))
  barplot(t, horiz=TRUE, las=1, main="Cross.Street.Name (raw)")
}

if (!exists(".no.output")) {
  load("RData/Cross.Street.Name.raw.RData")
  pdf(file="Cross.Street.Name.raw.RPlot.pdf")
  plot.Cross.Street.Name.raw(feature)
}
