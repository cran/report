## ---- echo=FALSE------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  warning = FALSE,
  message = FALSE,
  out.width = "100%",
  comment = "#"
)

options(
  knitr.kable.NA = "",
  width = 60
)

if (!requireNamespace("dplyr", quietly = TRUE)) {
  knitr::opts_chunk$set(eval = FALSE)
}

## ----eval=FALSE-------------------------------------------
#  install.packages("remotes")
#  remotes::install_github("easystats/report") # You only need to do that once

## ---------------------------------------------------------
library("report") # Load the package every time you start R

## ---------------------------------------------------------
report(iris)

## ---------------------------------------------------------
library(dplyr)

iris %>%
  group_by(Species) %>%
  report_table()

## ---------------------------------------------------------
report(t.test(formula = wt ~ am, data = mtcars))

## ---- eval=FALSE------------------------------------------
#  x <- c(1.83,  0.50,  1.62,  2.48, 1.68, 1.88, 1.55, 3.06, 1.30)
#  y <- c(0.878, 0.647, 0.598, 2.05, 1.06, 1.29, 1.06, 3.14, 1.29)
#  
#  report(wilcox.test(x, y, paired = TRUE))

## ---------------------------------------------------------
model <- lm(wt ~ am + mpg, data = mtcars)

report(model)

## ---------------------------------------------------------
model <- aov(wt ~ am + mpg, data = mtcars)

report(model)

## ---------------------------------------------------------
model <- glm(vs ~ mpg + cyl, data = mtcars, family = "binomial")

report(model)

## ---------------------------------------------------------
library(lme4)

model <- lmer(Reaction ~ Days + (Days | Subject), data = sleepstudy)

report(model)

