plot.Light.Injury.Severity <- function(serverity, light) {
    t <- table(serverity, light)
    u <- unique(serverity)
    barplot(t, beside = TRUE, col=topo.colors(length(u)))
    legend("topright", levels(u), col=topo.colors(length(u)), pch=19)
}

if (!exists(".no.output")) {
    load("RData/Injury.Severity.raw.RData")
    serverity <- feature
    load("RData/Light.RData")
    light <- feature
    pdf(file="Light.Injury.Severity.RPlot.pdf", width=8)
    plot.Light.Injury.Severity(serverity, light)
}

