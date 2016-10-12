residual_sum_squares <- function(lm) {
	sum(lm$residuals^2)
}

total_sum_squares <- function(lm) {
 y <- numeric()
	for (i in 1:length(lm$residuals)) {
		y[i] <- lm$residuals[i]+lm$fitted.values[i]
	}
	y_bar <- sum(y)/length(y)
		x <- 0
		for (i in 1:length(y)) {
			x[i] <- (y[i]-y_bar)^2
		}
sum(x)
}

r_squared <- function(lm) {
	(total_sum_squares(lm) - residual_sum_squares(lm))/total_sum_squares(lm)
}

length(regression1$residuals)

f_statistic <- function(lm) {
	((total_sum_squares(lm) - residual_sum_squares(lm))/(length(lm$coefficients)-1))/(residual_sum_squares(lm)/(length(lm$residuals)-(length(lm$coefficients)-1)-1))
}

residual_std_error <- function(lm) {
	sqrt((1/((length(lm$residuals)-(length(lm$coefficients)-1)-1))*residual_sum_squares(lm)))
}

