## ----echo=FALSE-------------------------------------------
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

pkgs <- c("dplyr", "lme4")
successfully_loaded <- vapply(pkgs, requireNamespace, FUN.VALUE = logical(1L), quietly = TRUE)
can_evaluate <- all(successfully_loaded)

if (can_evaluate) {
  knitr::opts_chunk$set(eval = TRUE)
  vapply(pkgs, require, FUN.VALUE = logical(1L), quietly = TRUE, character.only = TRUE)
} else {
  knitr::opts_chunk$set(eval = FALSE)
}

library(report)

## ----eval=FALSE-------------------------------------------
#  install.packages("remotes")
#  remotes::install_github("easystats/report") # You only need to do that once

## ----eval=FALSE-------------------------------------------
#  library("report") # Load the package every time you start R

## ---------------------------------------------------------
report(iris)

## ---------------------------------------------------------
iris %>%
  group_by(Species) %>%
  report_table()

## ---------------------------------------------------------
report(t.test(formula = mtcars$wt ~ mtcars$am))

## ----eval=FALSE-------------------------------------------
#  report(cor.test(mtcars$mpg, mtcars$wt))

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

