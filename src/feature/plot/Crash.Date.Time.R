plot.Crash.Date.Time.wday <- function(feature) {
    v <- vector()
    for (i in 0:6) {
        for (j in 0:23) {
            v <- c(v, sum(feature$wday == i & feature$hour == j))
        }
    }
    m <- matrix(v, ncol=7, nrow=length(v) / 7)
    colnames(m) <- c("Sun", "Mon", "Tue", "Wed", "Thu", "Fri", "Sat")
    rownames(m) <- 0:23
    par(mar=c(5,5,10,5))
    heatmap(m, Rowv=NA, Colv=NA, col = heat.colors(256), scale="column", margins=c(5,5),
        ylab="Hour", main="Crash Weekday vs Hour")
}

if (!exists(".no.output")) {
    load("RData/Crash.Date.Time.RData")
    pdf(file="Crash.Date.Time.RPlot.pdf", height=8)
    plot.Crash.Date.Time.wday(feature)
}

