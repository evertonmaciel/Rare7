#' Table data colection
#'
#' quantifies geographic range, abundance and habitat number for each species
#'
#' @param table containing the information necessary to calculate Rabinowitz forms of rarity
#' @return The output is another table organised to be used in the function rarityForms
#' @export
rareData <- function(table){
  `%ni%` <- Negate(`%in%`)
  Species <- as.character(sort(unique(table$species)))
  Sample_area <- round(abs(diff(range(table$lat))))
  Detection_area <- numeric()
  for(i in seq_along(Species))
  {
    Detection_area[i] <- length(unique(round(table$lat[which(table$species==Species[i])])))
  }
  Abundance <- numeric()
  for(i in seq_along(Species))
  {
    a <- table$NumIndiv[which(table$species==Species[i])]
    b <- max(a)
    if(b!=0){
      Abundance[i] <- b
    }else{
      Abundance[i] <- NA
    }
  }
  Habitats <- numeric()
  for(i in seq_along(Species))
  {
    a <- unique(table$habitat[which(table$species==Species[i])])
    b <- which(a==0)
    if(length(b)==0){
      Habitats[i] <- length(a)
    }else{
      Habitats[i] <- length(a[-b])
    }
  }
  Habitats[which(Habitats==0)] <- NA
  data.frame(Species,Sample_area,Detection_area,Abundance,Habitats)
}
