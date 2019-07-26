#' Local forms of rarity
#'
#' plots a pie chart showing the shares of rarity forms in a specif locality
#'
#' @importfrom data.table
#' @param  table containing the information of species occurrence per locality
#' @param  rarity the output provided by the function rareForms
#' @param  locality character, name of the target locality
#' @return The function plots a pie chart showing the proportion of each rarity form for a target locality
#' @export
rarePlot <- function (table,rarity,locality) 
{
  loc <- unique(table$CodSite)
  sps_loc <- list()
  for (i in 1:length(loc)) {
    sps_loc[[i]] <- table$specie[which(table$CodSite == loc[i])]
    names(sps_loc)[[i]] <- as.character(loc[i])
  }
  sps_loc_rarity <- list()
  for (i in 1:length(sps_loc)) {
    sps_loc_rarity[[i]] <- character()
    for (j in 1:length(sps_loc[[i]])) {
      sps_loc_rarity[[i]][j] <- as.character(rarity$Form[which(rarity$Species == 
                                                                  sps_loc[[i]][j])])
    }
    names(sps_loc_rarity)[[i]] <- as.character(loc[i])
  }
  loc_tables <- lapply(lapply(sps_loc_rarity, table), data.frame)
  pie(loc_tables[[which(names(loc_tables) == locality)]]$Freq, 
      labels = loc_tables[[which(names(loc_tables) == locality)]]$Var1, 
      main = names(loc_tables[which(names(loc_tables) == locality)]))
}
