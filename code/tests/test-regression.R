context("Test for Residual Sum of Squares")
test_that("Residual Sum of Squares works", {
  reg=lm(mpg~hp+disp, data = mtcars)
   expect_equal(residual_sum_squares(reg), 283.4934)	
})

summary(lm(mpg~hp+disp, data = mtcars))

context("Test for Total Sum of Squares")
test_that("Total Sum of Squares works", {
  reg=lm(mpg~hp+disp, data = mtcars)
   expect_equal(total_sum_squares(reg), 1126.047)	
})

context("Test for R2")
test_that("R2 works", {
  reg=lm(mpg~hp+disp, data = mtcars)
   expect_equal(r_squared(reg), 0.7482402)	
})

context("Test for F Statistic")
test_that("F Statistic works", {
  reg=lm(mpg~hp+disp, data = mtcars)
   expect_equal(f_statistic(reg), 43.09458)	
})

context("Test for Residual Standard Error")
test_that("Residual Standard Error works", {
  reg=lm(mpg~hp+disp, data = mtcars)
   expect_equal(residual_std_error(reg), 3.126601)	
})