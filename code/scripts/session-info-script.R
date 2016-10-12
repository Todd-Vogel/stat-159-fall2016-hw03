library('testthat')
library('xtable')

sink("../../session-info.txt")
sessionInfo('testthat')
sessionInfo('xtable')
sink()