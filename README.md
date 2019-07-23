# Rare7
Classifies species into seven forms of the rarity of Rabinowitz

# Overview
The Rabinowitz’s method uses three parameters (geographic range, habitat specificity, and population size) to classify rare species. Geographic range is a parameter of regional scale, while the other two are local. Their combination results in seven form of rarity, and in the identification of common species.

# Developer
Carlos Eduardo Arlé Ribeiro de Souza
PhD study, German Centre for Integrative Biodiversity Research - iDiv, Germany.
contact: <eduardo.arle@idiv.de>

Everton Alves Maciel
PhD study, University of Campinas - UNICAMP, Brazil. and
PhD-SWE study, Helmholtz Center Environmental Research - UFZ, Germany.
contact: <everttmaciel@gmail.com>, <everton.alves-maciel@ufz.de>

## install Rare7 from github

install.packages('devtools')

library(devtools)

install_github('evertonmaciel/Rare7')

## import packages
library(Rare7)

# Usage

rareData ( )

The main function is rareData, basically, this quantifies higher latitudes to quantify the proportion of distribution of a species; maximum abundance of a species and habitat number where species occur.

rarityForms ( )

The second function uses the output provided by the first function. Then this function classifies the forms of rarity.

#Data format/information
Three types of data are supported

Accepted_name   Accepted_author      Accepted_family    CodSite         lat              long       
                       : 58             :121    Fabaceae     : 90    MT01   :107   Min.   :-22.60   Min.   :-62.03  
 Caryocar brasiliense  :  9   Mart.     : 47                 : 58    SP02   : 73   1st Qu.:-19.33   1st Qu.:-56.08  
 Erythroxylum suberosum:  8   A.St.-Hil.: 24    Myrtaceae    : 45    MG11   : 62   Median :-15.90   Median :-47.79  
 Pouteria ramiflora    :  8   Benth.    : 18    Malpighiaceae: 31    RO02   : 58   Mean   :-17.39   Mean   :-50.06  
 Qualea grandiflora    :  8   A.Juss.   : 17    Vochysiaceae : 30    MG12   : 56   3rd Qu.:-15.77   3rd Qu.:-45.88  
 Aspidosperma          :  7   Aubl.     : 14    Rubiaceae    : 25    DF01   : 54   Max.   :-12.29   Max.   :-44.35  
 (Other)               :492   (Other)   :349    (Other)      :311    (Other):180                                    
                               specie       NumIndiv                      habitat   
 Caryocar brasiliense Cambess.    :  9   Min.   :  1.00   0                   : 58  
 Pouteria ramiflora (Mart.) Radlk.:  9   1st Qu.:  1.00   cerradão            : 62  
 Qualea grandiflora Mart.         :  9   Median :  5.00   Cerrado denso       : 53  
 Byrsonima coccolobifolia Kunth   :  8   Mean   : 19.15   Cerrado rupestre    : 51  
 Erythroxylum suberosum A.St.-Hil.:  8   3rd Qu.: 18.00   cerrado sensu strict:341  
 Aspidosperma tomentosum Mart.    :  7   Max.   :406.00   murundus            : 25  


#How to cite
If you publish your work based on results from Rare7 (R package), please make reference to Arle and Maciel (2019) and Rabinowitz (1981) given in the following list.

# The main reference
Rabinowitz, D. (1981). Seven forms of rarity. In ‘The biological aspects of rare plant conservation’.(Ed. H Synge) pp. 205–217.

Rabinowitz, D., Rapp, J. K., & Dixon, P. M. (1984). Competitive abilities of sparse grass species: means of persistence or cause of abundance. Ecology, 65(4), 1144-1154.


# Learning more
Rabinowitz, D. (1986). Seven forms of rarity and their frequency in the flora of the British Isles. Conservation biology: the science of scarcity and diversity.

Sætersdal, M., & Birks, H. J. B. (1997). A comparative ecological study of Norwegian mountain plants in relation to possible future climatic change. Journal of Biogeography, 24(2), 127-152.

Pitman, N. C., Terborgh, J., Silman, M. R., & Nuñez V, P. (1999). Tree species distributions in an upper Amazonian forest. Ecology, 80(8), 2651-2661.

Caiafa, A. N., & Martins, F. R. (2010). Forms of rarity of tree species in the southern Brazilian Atlantic rainforest. Biodiversity and conservation, 19(9), 2597-2618.



