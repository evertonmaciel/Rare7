#' seven forms of rarity
#'
#' classify the seven forms of rarity according to geographic range, abundance and habitat
#'
#' @param  use output provide by function rabiData
#' @return The output is another table organised to be used in the function rarityForms
#' @export
rarityForms <- function(data,percentage=0.1,min_abund=2,habitats=1){
  `%ni%` <- Negate(`%in%`) #create an operator for "not in"
  data2 <- data[complete.cases(data),]
  perc <- data2[,"Detection_area"]/data2[,"Sample_area"]
  range <- ifelse(perc<=percentage,1,0)
  abunda <- ifelse(data2$Abunda<=min_abund,1,0)
  habitat <- ifelse(data2$Habitats<=habitats,1,0)
  tab2 <- as.data.frame(cbind(Species=as.character(data2$Species),range,abunda,habitat))
  forma <- character()
  i=1
  for(i in 1:nrow(tab2))
  {
    if(tab2$range[i]==0&tab2$abunda[i]==0&tab2$habitat[i]==0){forma[i]="common"}
    if(tab2$range[i]==0&tab2$abunda[i]==1&tab2$habitat[i]==0){forma[i]="form1"}
    if(tab2$range[i]==0&tab2$abunda[i]==0&tab2$habitat[i]==1){forma[i]="form2"}
    if(tab2$range[i]==0&tab2$abunda[i]==1&tab2$habitat[i]==1){forma[i]="form3"}
    if(tab2$range[i]==1&tab2$abunda[i]==0&tab2$habitat[i]==0){forma[i]="form4"}
    if(tab2$range[i]==1&tab2$abunda[i]==1&tab2$habitat[i]==0){forma[i]="form5"}
    if(tab2$range[i]==1&tab2$abunda[i]==0&tab2$habitat[i]==1){forma[i]="form6"}
    if(tab2$range[i]==1&tab2$abunda[i]==1&tab2$habitat[i]==1){forma[i]="form7"}
  }
  result0 <- as.data.frame(cbind(Species=(as.character(tab2$Species)),Forma=as.character(forma)))
  a <- data[which(data$Species %ni% data2$Species),]
  b <- which(is.na(a$Abundance)&is.na(a$Habitats))
  c <- which(is.na(a$Abundance)&!is.na(a$Habitats))
  d <- which(!is.na(a$Abundance)&is.na(a$Habitats))
  result_na <- data.frame(Species=a$Species,Forma=NA)
  result_na$Forma[b] <- "No abundance nor habitats information"
  result_na$Forma[c] <- "No abundance information"
  result_na$Forma[d] <- "No habitats information"
  result <- rbind(result0,result_na)
  result <- result[order(as.character(result$Species)),]
  return(result)
}