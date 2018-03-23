load("RData/Vehicle.Damage.Extent.raw.RData")
t <- sort(table(feature), decreasing=TRUE)
par(las=2)
par(mar=c(5,15,4,2))
barplot(sort(table(feature), decreasing=TRUE), horiz=TRUE)