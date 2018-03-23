all: .raw.RData .RData .RPlot

.raw.RData: src/seprate_features.R
	mkdir -p RData
	Rscript src/seprate_features.R
	touch .raw.RData

DATA_SCRIPTS = $(wildcard src/feature/*.R)
PLOT_SCRIPTS = $(wildcard src/feature/plot/*.R)

.RData: .raw.RData $(DATA_SCRIPTS)
	for x in $(DATA_SCRIPTS); do \
		Rscript $$x; \
	done
	touch .RData

.RPlot: .RData $(PLOT_SCRIPTS) 
	mkdir -p RPlot
	for x in $(PLOT_SCRIPTS); do \
		Rscript $$x; \
	done
	mv *.RPlot.pdf RPlot/
	touch .RPlot

clean:
	rm -f .raw.RData
	rm -rf RData
	rm -rf RPlot
	rm -f .RData
	rm -f .RPlot
