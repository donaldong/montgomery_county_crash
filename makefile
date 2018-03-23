all: .raw.RData .RData .RPlot

.raw.RData: src/seprate_features.R
	mkdir -p RData
	Rscript src/seprate_features.R
	touch .raw.RData

.RData: .raw.RData

.RPlot: src/feature/plot/*.R
	mkdir -p RPlot
	Rscript src/feature/plot/*.R
	mv *.RPlot.pdf RPlot/ 
	touch .RPlot

