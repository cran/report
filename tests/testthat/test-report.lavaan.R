skip_if_not_installed("lavaan")

structure <- " ind60 =~ x1 + x2 + x3
  dem60 =~ y1 + y2 + y3
  dem60 ~ ind60 "

set.seed(123)
model <- lavaan::sem(structure, data = lavaan::PoliticalDemocracy)

# Specific reports
test_that("model-lavaan detailed report", {
  expect_snapshot(variant = "windows", report(model))
})

test_that("model-lavaan detailed table", {
  expect_snapshot(variant = "windows", report_table(model))
})

test_that("model-lavaan detailed performance", {
  expect_snapshot(variant = "windows", report_performance(model))
})
