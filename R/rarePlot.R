#' Local forms of rarity
#'
#' plots a pie chart showing the shares of rarity forms in a specif locality
#'
#' @importFrom data.table unique as.data.table
#' @param  table containing the information of species occurrence per locality
#' @param  rarity the output provided by the function rareForms
#' @param  locality character, name of the target locality
#' @return The function plots a pie chart showing the proportion of each rarity form for a target locality
#' @export
rarePlot <- function (table,rarity,locality) 
{
  table$CodSite <- as.character(table$CodSite)
  loc <- data.table::unique(data.table::as.data.table(table), by = "CodSite")
  return(loc)
}
?unique
library(data.table)
