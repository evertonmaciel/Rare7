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



