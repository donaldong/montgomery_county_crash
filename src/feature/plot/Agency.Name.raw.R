plot.Agency.Name.raw <- function(feature) {
    t <- sort(table(feature), decreasing=TRUE)
    t <- head(t, 20)
    par(mar=c(5,12,5,2))
    barplot(t, horiz=TRUE, las=1, main="Agency Name (Raw)")
}

if (!exists(".no.output")) {
    load("RData/Agency.Name.raw.RData")
    pdf(file="Agency.Name.raw.RPlot.pdf")
    plot.Agency.Name.raw(feature)
}
