plot.Weather.Injury.Severity <- function(serverity, weather) {
    t <- table(serverity, weather)
    u <- unique(serverity)
    barplot(t, beside = TRUE, col=topo.colors(length(u)))
    legend("topright", levels(u), col=topo.colors(length(u)), pch=19)
}

if (!exists(".no.output")) {
    load("RData/Injury.Severity.raw.RData")
    serverity <- feature
    load("RData/Weather.RData")
    weather <- feature
    pdf(file="Weather.Injury.Severity.RPlot.pdf", width=9)
    plot.Weather.Injury.Severity(serverity, weather)
}

