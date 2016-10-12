advertising.data <- read.csv('../../data/Advertising.csv')

Sales <- advertising.data$Sales
TV <- advertising.data$TV
Radio <- advertising.data$Radio
Newspaper <- advertising.data$Newspaper

dependent.matrix <- advertising.data[,c(2,3,4)]
cor.matrix <- cor(dependent.matrix)

sink("../../data/eda-output.txt")
Sales_stats <- summary(Sales)
TV_stats <- summary(TV)
Radio_stats <- summary(Radio)
Newspaper_stats <- summary(Newspaper)
full_statistics <- rbind(Sales_stats, TV_stats, Radio_stats, Newspaper_stats)
full_statistics
cor.matrix
sink()

save(cor.matrix, file = "../../data/correlation-matrix.RData")

png('../../images/scatterplot-matrix.png')
pairs(advertising.data[,c(2,3,4)])
dev.off()

png('../../images/histogram-sales.png')
hist(Sales)
dev.off()

png('../../images/histogram-tv.png')
hist(TV)
dev.off()

png('../../images/histogram-radio.png')
hist(Radio)
dev.off()

png('../../images/histogram-newspaper.png')
hist(Newspaper)
dev.off()