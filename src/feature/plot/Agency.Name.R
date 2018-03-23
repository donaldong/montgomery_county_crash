plot.Agency.Name <- function(feature) {
    t <- sort(table(feature), decreasing=TRUE)
    t <- head(t, 20)
    par(mar=c(5,12,5,2))
    barplot(t, horiz=TRUE, las=1, main="Agency Name")
}

if (!exists(".no.output")) {
    load("RData/Agency.Name.RData")
    pdf(file="Agency.Name.RPlot.pdf")
    plot.Agency.Name(feature)
}
