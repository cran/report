## ---- echo = FALSE------------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  tidy.opts = list(width.cutoff = 60),
  tidy = TRUE
)
old_options <- options(knitr.kable.NA = '', digits = 4)
if (!requireNamespace("dplyr", quietly = TRUE)) {
  knitr::opts_chunk$set(eval = FALSE)
}

## ---- echo = FALSE------------------------------------------------------------
options(old_options)  # Restore options

