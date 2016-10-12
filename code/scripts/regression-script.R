advertising.data <- read.csv("../../data/Advertising.csv")
regression1 <- lm(Sales ~ TV + Newspaper + Radio, advertising.data)
reg1 <- summary(regression1)


TV <- advertising.data$TV
Sales <- advertising.data$Sales
Newspaper <- advertising.data$Newspaper
Radio <- advertising.data$Radio

model.res <- resid(regression1)


png('../../images/residual-plot.png')
plot(regression1, which = c(1), caption = list("Residuals vs Fitted", "Normal Q-Q", "Scale-Location", "Cook's distance", "Residuals vs Leverage", expression("Cook's dist vs Leverage  " * h[ii] / (1 - h[ii]))))
dev.off()

png('../../images/normal-qq-plot.png')
plot(regression1, which = c(2), caption = list("Residuals vs Fitted", "Normal Q-Q", "Scale-Location", "Cook's distance", "Residuals vs Leverage", expression("Cook's dist vs Leverage  " * h[ii] / (1 - h[ii]))))
dev.off()

png('../../images/scale-location-plot.png')
plot(regression1, which = c(3), caption = list("Residuals vs Fitted", "Normal Q-Q", "Scale-Location", "Cook's distance", "Residuals vs Leverage", expression("Cook's dist vs Leverage  " * h[ii] / (1 - h[ii]))))
dev.off()


save(reg1, file = "../../data/regression.RData")

png('../../images/scatterplot-tv-sales.png')
plot(TV, Sales)
abline(regression1, col = "#0000DD59")
dev.off()

png('../../images/scatterplot-newspaper-sales.png')
plot(Newspaper, Sales)
abline(regression1, col = "#0000DD59")
dev.off()

png('../../images/scatterplot-radio-sales.png')
plot(Radio, Sales)
abline(regression1, col = "#0000DD59")
dev.off()

