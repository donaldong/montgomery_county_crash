plot.Surface.Condition <- function(location, condition) {
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
    load("RData/Surface.Condition.RData")
    condition <- feature
    pdf(file="Surface.Condition.Location.RPlot.pdf")
    plot.Surface.Condition(location, condition)
}

