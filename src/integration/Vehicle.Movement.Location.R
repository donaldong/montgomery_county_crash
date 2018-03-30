plot.Vehicle.Movement <- function(location, movement) {
    library(ggmap)
    x <- location[seq(1, length(location), 2)]
    y <- location[seq(2, length(location), 2)]
    dat <- data.frame(long=y, lat=x, movement=factor(movement)) 
    map = get_map(c(mean(y), mean(x)), maptype="road", zoom=11)
    p = ggmap(map)
    p = p + geom_point(data=dat, aes(x=long,y=lat, colour=movement), size=0.4, alpha = 0.2)
    p
}

if (!exists(".no.output")) {
    load("RData/Location.RData")
    location <- feature
    load("RData/Vehicle.Movement.RData")
    movement <- feature
    pdf(file="Vehicle.Movement.Location.RPlot.pdf")
    plot.Vehicle.Movement(location, movement)
}

