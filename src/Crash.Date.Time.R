load("RData/Crash.Date.Time.raw.RData")
feature <- as.character(feature)
feature <- strptime(feature, "%m/%d/%Y %H:%M:%S %p", tz="EST5EDT")
save(feature, file="RData/Crash.Date.Time.Data.RData")
