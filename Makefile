# Run all previous commands to get all of the listed outputs

all: data/eda-output.txt data/regression.RData data/correlation-matrix.RData report/report.pdf

# Create pdf report document from R markdown file

report/report.pdf: report/report.Rmd 
	cd report; Rscript -e 'library(rmarkdown); render("report.Rmd")'

# Run eda-script which incorporates the Advertising dataset to output txt document

data/eda-output.txt: code/scripts/eda-script.R data/Advertising.csv
	cd code/scripts; Rscript eda-script.R

# Run eda-script which incorporates the Advertising dataset to output correlation matrix

data/correlation-matrix.RData: code/scripts/eda-script.R data/Advertising.csv
	cd code/scripts; Rscript eda-script.R

# Run regression-script which incorporates the Advertising dataset to output regression data, a component of the script

data/regression.RData: code/scripts/regression-script.R data/Advertising.csv
	cd code/scripts; Rscript regression-script.R

# Download the advertising dataset

data/Advertising.csv:
	curl -o data/Advertising.csv "http://www-bcf.usc.edu/~gareth/ISL/Advertising.csv"

clean: rm -f report/report.pdf

