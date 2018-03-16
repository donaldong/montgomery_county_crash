seprate_features <- function() {
    dat <- read.csv('dat.csv')
    feature_names <- names(dat)
    for (i in 1:length(dat)) {
        filename <- paste0("RData/", feature_names[i], ".raw.RData")
        feature <- dat[,i]
        save(feature, file=filename)
    }
}
seprate_features();
