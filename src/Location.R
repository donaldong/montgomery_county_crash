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
save(feature, file="Location.RData")
x <- feature[seq(1, length(feature), 2)]
y <- feature[seq(2, length(feature), 2)]
plot(x, y)
