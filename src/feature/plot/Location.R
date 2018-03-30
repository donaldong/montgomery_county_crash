plot.Location <- function(feature) {
    library(ggmap)
    x <- feature[seq(1, length(feature), 2)]
    y <- feature[seq(2, length(feature), 2)]
    dat <- data.frame(long=y, lat=x) 
    map = get_map(c(mean(y), mean(x)), maptype="road", zoom=11)
    p = ggmap(map)
    p = p + geom_point(data=dat, aes(x=long,y=lat),
        color="red", size=0.2, alpha=0.2)
    p
}

if (!exists(".no.output")) {
    load("RData/Location.RData")
    pdf(file="Location.RPlot.pdf")
    plot.Location(feature)
}

