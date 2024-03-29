#' @rdname format_formula
#' @examples
#' model <- lm(Sepal.Length ~ Species, data = iris)
#' format_algorithm(model)
#'
#' @examplesIf requireNamespace("lme4", quietly = TRUE)
#' # Mixed models
#' library(lme4)
#' model <- lme4::lmer(Sepal.Length ~ Sepal.Width + (1 | Species), data = iris)
#' format_algorithm(model)
#' @return A character string.
#' @export
format_algorithm <- function(x) {
  algorithm <- suppressWarnings(insight::find_algorithm(x))

  text <- ""

  if (is.null(algorithm$algorithm)) {
    return(text)
  }

  # Name
  text <- algorithm$algorithm
  if (text == "sampling") {
    text <- "MCMC sampling"
  }

  # Chains
  if (!is.null(algorithm$chains)) {
    text <- paste0(
      text,
      " with ",
      algorithm$chains,
      " chains"
    )
    if (!is.null(algorithm$iterations)) {
      text <- paste0(
        text,
        " of ",
        algorithm$iterations,
        " iterations"
      )
    }
    if (!is.null(algorithm$warmup)) {
      text <- paste0(
        text,
        " and a warmup of ",
        algorithm$warmup
      )
    }
    # Thinning?
  }

  # Optimizer
  if (!is.null(algorithm$optimizer)) {
    optimizer <- algorithm$optimizer[1]

    if (optimizer == "bobyqa") {
      optimizer <- "BOBYQA"
    }
    if (optimizer == "Nelder_Mead") {
      optimizer <- "Nelder-Mead"
    }
    text <- paste0(
      text,
      " and ",
      optimizer,
      " optimizer"
    )
  }

  text
}
