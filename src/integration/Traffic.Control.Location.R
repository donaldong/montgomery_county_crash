plot.Traffic.Control <- function(location, condition) {
    library(ggmap)
    x <- location[seq(1, length(location), 2)]
    y <- location[seq(2, length(location), 2)]
    dat <- data.frame(long=y, lat=x, condition=factor(condition)) 
    map = get_map(c(mean(y), mean(x)), maptype="road", zoom=11)
    p = ggmap(map)
    p = p + geom_point(data=dat, aes(x=long,y=lat, colour=condition), size=0.4, alpha = 0.2)
    p
}

if (!exists(".no.output")) {
    load("RData/Location.RData")
    location <- feature
    load("RData/Traffic.Control.RData")
    condition <- feature
    pdf(file="Traffic.Control.Location.RPlot.pdf")
    plot.Traffic.Control(location, condition)
}

