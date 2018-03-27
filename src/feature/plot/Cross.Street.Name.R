plot.Cross.Street.Name <- function(feature) {
  t <- sort(table(feature), decreasing=TRUE)
  par(mar=c(5,12,5,2))
  barplot(t, horiz=TRUE, las=1, main="Cross.Street.Name")
}

if (!exists(".no.output")) {
  load("RData/Cross.Street.Name.RData")
  pdf(file="Cross.Street.Name.RPlot.pdf")
  plot.Cross.Street.Name(feature)
}
