plot.Vehicle.Damage.Extent.Injury.Severity <- function(serverity, extent) {
    t <- table(serverity, extent)
    u <- unique(serverity)
    barplot(t, beside = TRUE, col=topo.colors(length(u)))
    legend("topright", levels(u), col=topo.colors(length(u)), pch=19)
}

if (!exists(".no.output")) {
    load("RData/Injury.Severity.raw.RData")
    serverity <- feature
    load("RData/Vehicle.Damage.Extent.RData")
    extent <- feature
    pdf(file="Vehicle.Damage.Extent.Injury.Severity.RPlot.pdf", width=9)
    plot.Vehicle.Damage.Extent.Injury.Severity(serverity, extent)
}

