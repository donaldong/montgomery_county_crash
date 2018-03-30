plot.Multiple.Drivers <- function(Report.Number, location) {
    t <- table(Report.Number)
    i <- t > 2
    r <- rownames(t[i])
    index <- vector()
    for (n in Report.Number) {
        if (n %in% r) index <- c(index, TRUE)
        else index <- c(index, FALSE)
    }
    library(ggmap)
    x <- location[seq(1, length(location), 2)]
    y <- location[seq(2, length(location), 2)]
    x <- x[index]
    y <- y[index]
    dat <- data.frame(long=y, lat=x)
    map = get_map(c(mean(y), mean(x)), maptype="road", zoom=11)
    p = ggmap(map)
    p = p + geom_point(data=dat, aes(x=long,y=lat),
        color="red", size=0.2, alpha=0.2)
    p
}

if (!exists(".no.output")) {
    pdf(file="Multiple.Drivers.Location.RPlot.pdf")
    load("RData/Location.RData")
    location <- feature
    load("RData/Report.Number.raw.RData")
    Report.Number <- feature
    plot.Multiple.Drivers(Report.Number, location)
}

