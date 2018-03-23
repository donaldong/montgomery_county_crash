load("RData/Light.raw.RData")
t <- sort(table(feature), decreasing=TRUE)
par(las=2)
par(mar=c(5,15,4,2))
barplot(t, horiz=TRUE)