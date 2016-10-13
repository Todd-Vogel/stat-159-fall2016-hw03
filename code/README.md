#File Explanations

##Scripts

###eda-script.R

This file contains an R script that calculates relevant information on TV, Radio, Newspaper and Sales variables and outputs a .txt file with a data frame of the results.  Additionally, eda-script.R creates 4 histogram image files for TV data and sales data (one .pdf and .png for each variable) and a correlation matrix among the variables that is also a part of the .txt file.

###regression-script.R

This file calculates the regression coefficients for the relationship between the dependent variable sales and the independent variables TV, Radio, and Newspaper.  Along with that, the file creates .png and .pdf scatterplot of the results as well as residual, scale location, and normal qq plots.

###session-info-script.R

This file includes information on each R package utilized in this homework.

##Functions

###regression-functions.R

This file contains the scripts creating 5 functions.  These functions are intended to calculate 5 relevant values from a given data set: RSS, TSS, $R^2$, F-Statistic, and Residual Standard Error.

##Tests

###test-regression.R

This test file contains a script that tests the accuracy and correctness of the aforementioned functions.