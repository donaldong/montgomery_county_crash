plot.Location <- function(feature) {
    library(ggmap)
    x <- feature[seq(1, length(feature), 2)]
    y <- feature[seq(2, length(feature), 2)]
    dat <- data.frame(long=y, lat=x) 
    map = get_map(c(y[1], x[1]), maptype="road", zoom=10)
    p = ggmap(map)
    p = p + geom_point(data=dat, aes(x=long,y=lat),
        color="red", size=1)
    p
}

if (!exists(".no.output")) {
    load("RData/Location.RData")
    pdf(file="Location.RPlot.pdf")
    plot.Location(feature)
}

