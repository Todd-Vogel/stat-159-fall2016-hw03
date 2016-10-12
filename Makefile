all: report/report.pdf data/eda-output.txt data/regression.RData data/correlation-matrix.RData

report/report.pdf: report/report.Rmd 
	cd report; pandoc report.Rmd -s -o report.pdf

data/eda-output.txt: code/scripts/eda-script.R data/Advertising.csv
	cd code/scripts; Rscript eda-script.R

data/correlation-matrix.RData: code/scripts/eda-script.R data/Advertising.csv
	cd code/scripts; Rscript eda-script.R

data/regression.RData: code/scripts/regression-script.R data/Advertising.csv
	cd code/scripts; Rscript regression-script.R

data/Advertising.csv:
	curl -o data/Advertising.csv "http://www-bcf.usc.edu/~gareth/ISL/Advertising.csv"

clean: rm -f report/report.Rmd report/report.pdf

