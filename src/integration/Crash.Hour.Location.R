plot.Crash.Hour <- function(location, hour) {
    library(ggmap)
    x <- location[seq(1, length(location), 2)]
    y <- location[seq(2, length(location), 2)]
    dat <- data.frame(long=y, lat=x, hour=factor(hour)) 
    map = get_map(c(mean(y), mean(x)), maptype="road", zoom=11)
    p = ggmap(map)
    p = p + geom_point(data=dat, aes(x=long,y=lat, colour=hour), size=0.4, alpha = 0.2)
    p
}

if (!exists(".no.output")) {
    load("RData/Location.RData")
    location <- feature
    load("RData/Crash.Date.Time.RData")
    time <- feature
    pdf(file="Crash.Hour.Location.RPlot.pdf")
    plot.Crash.Hour(location, time$hour)
}

