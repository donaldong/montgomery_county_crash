plot.bad.weather <- function(location, weather) {
    library(ggmap)
    x <- location[seq(1, length(location), 2)]
    y <- location[seq(2, length(location), 2)]
    index <- weather != "CLEAR"
    x <- x[index]
    y <- y[index]
    w <- weather[index]
    dat <- data.frame(long=y, lat=x,weather=factor(w)) 
    map = get_map(c(mean(y), mean(x)), maptype="road", zoom=11)
    p = ggmap(map)
    p = p + geom_point(data=dat, aes(x=long,y=lat, colour=weather), size=0.4, alpha = 0.2)
    p
}

if (!exists(".no.output")) {
    load("RData/Location.RData")
    location <- feature
    load("RData/Weather.RData")
    weather <- feature
    pdf(file="Bad_Weather.Location.RPlot.pdf")
    plot.bad.weather(location, weather)
}

