plot.Driver.Substance.Abuse.Injury.Severity <- function(serverity, substance) {
    t <- table(serverity, substance)
    u <- unique(serverity)
    barplot(t, beside = TRUE, col=topo.colors(length(u)))
    legend("topright", levels(u), col=topo.colors(length(u)), pch=19)
}

if (!exists(".no.output")) {
    load("RData/Injury.Severity.raw.RData")
    serverity <- feature
    load("RData/Driver.Substance.Abuse.RData")
    substance <- feature
    pdf(file="Driver.Substance.Abuse.Injury.Severity.RPlot.pdf", width=8)
    plot.Driver.Substance.Abuse.Injury.Severity(serverity, substance)
}

