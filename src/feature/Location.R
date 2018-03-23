library(ggmap)

load("RData/Location.raw.RData")
feature <- as.character(feature)
parse <- function(s) {
    tokens <- strsplit(s, ", ")
    x <- tokens[[1]][1]
    y <- tokens[[1]][2]
    x <- substr(x, 2, nchar(x))
    y <- substr(y, 1, nchar(y) - 1)
    return(c(as.numeric(x), as.numeric(y)))
}
feature <- sapply(feature, parse)
save(feature, file="RData/Location.RData")
x <- feature[seq(1, length(feature), 2)]
y <- feature[seq(2, length(feature), 2)]
dat <- data.frame(long=y, lat=x) 
map = get_map(c(y[1], x[1]), maptype="road", zoom=10)
p = ggmap(map)
p = p + geom_point(data=dat, aes(x=long,y=lat),
 color="red", size=1)
p
