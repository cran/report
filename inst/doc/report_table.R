## ---- echo = FALSE----------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  message = FALSE,
  warning = FALSE,
  comment = "#"
)

options(
  knitr.kable.NA = "",
  width = 60
)

if (!requireNamespace("dplyr", quietly = TRUE)) {
  knitr::opts_chunk$set(eval = FALSE)
}

## ---------------------------------------------------------
library(report)

## ---------------------------------------------------------
results <- cor.test(mtcars$mpg, mtcars$wt)

report_table(results)

## ---------------------------------------------------------
t <- summary(report_table(results))
t

## ---------------------------------------------------------
display(t)

## ---- results='asis'--------------------------------------
display(t,
  stars = TRUE,
  title = "Table 1",
  footer = "Correlation in the mtcars (n = 32) dataset.\n*** p < .001"
)

## ---------------------------------------------------------
results <- t.test(mtcars$mpg ~ mtcars$am)

t <- summary(report_table(results))
t

## ---------------------------------------------------------
as.data.frame(t)

## ---------------------------------------------------------
insight::format_table(as.data.frame(t), stars = TRUE)

## ---------------------------------------------------------
results1 <- t.test(mtcars$mpg ~ mtcars$am)
results2 <- t.test(mtcars$wt ~ mtcars$am)
results3 <- t.test(mtcars$qsec ~ mtcars$am)

results <- c(
  report_table(results1),
  report_table(results2),
  report_table(results3)
)
display(results)

## ---------------------------------------------------------
model <- lm(Petal.Length ~ Species * Petal.Width, data = iris)

report_table(model)

