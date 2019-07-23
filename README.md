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

# Data
Data includes a dataset already published. This data was collected from papers to use as an example and to test the package.

# Install Rare7
install_github("evertonmaciel/Rare7")

# Usage
library(Rare7)

rareData()

The main function is rareData, basically, this quantifies higher latitudes to quantify the proportion of distribution of a species; maximum abundance of a species and habitat number where species occur.

rarityForms()

The second function uses the output provided by the first function. Then this function classifies the forms of rarity.

# Learning more

Rabinowitz, D. (1981). Seven forms of rarity. In ‘The biological aspects of rare plant conservation’.(Ed. H Synge) pp. 205–217.

Rabinowitz, D., Rapp, J. K., & Dixon, P. M. (1984). Competitive abilities of sparse grass species: means of persistence or cause of abundance. Ecology, 65(4), 1144-1154.

Rabinowitz, D. (1986). Seven forms of rarity and their frequency in the flora of the British Isles. Conservation biology: the science of scarcity and diversity.






