#' @include report.lm.R
#' @export
report.glmmTMB <- report.lm

#' @export
report_effectsize.glmmTMB <- report_effectsize.lm

#' @export
report_table.glmmTMB <- report_table.lm

#' @export
report_performance.glmmTMB <- report_performance.lm

#' @export
report_statistics.glmmTMB <- report_statistics.lm

#' @export
report_parameters.glmmTMB <- report_parameters.lm

#' @export
report_intercept.glmmTMB <- report_intercept.lm

#' @export
report_random.glmmTMB <- function(x, ...) {
  random_terms <- insight::find_terms(x)$random
  if (!is.null(random_terms)) {
    text <- random_terms
    text <- paste0("The model included ", text, " as random effect")
    text <- ifelse(length(random_terms) > 1, paste0(text, "s"), text)
    text_full <- paste0(text, " (", format_formula(x, "random"), ")")
  }

  as.report_random(text_full, summary = text, ...)
}


#' @export
report_model.glmmTMB <- report_model.lm

#' @export
report_info.glmmTMB <- report_info.lm

#' @export
report_text.glmmTMB <- report_text.lm
