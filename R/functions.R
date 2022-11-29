
decennie_a_partir_annee <- function(annee) {
  return(annee - annee %% 10)
}

#' Aggregated statistics 
#' 
#' @param a vector of values
#' @param b a string. The type of statistics
#' @return a number
#' @example 
#' stats_agregees(rnorm(10))
#' stats_agregees(rnorm(10), "ecart-type")
#' stats_agregees(rnorm(10), "variance")



stats_agregees <- function(a, b = "moyenne", ...) {
  match.arg(b,
            c("moyenne",
              "variance",
              "ecart-type",
              "sd",
              "ecart type")
  )
  switch(b,
         moyenne = mean(a, ...),
         variance = var(a, ...),
         sd(a, ...)
  )
}