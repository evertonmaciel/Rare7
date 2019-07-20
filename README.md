# Rare7
Classifies species in seven forms of the rarity of Rabinowitz

# Overview
The Rabinowitz’s method uses three parameters (geographic range, habitat specificity, and population size) to classify rare species. Geographic range is a parameter of regional scale, while the other two are local. Their combination results in seven form of rarity, and in the identification of common species.

# Developer
Carlos Eduardo Arlé Ribeiro de Souza and
Everton Alves Maciel

# Data
Data includes a dataset already published. This data was collected from papers to use as an example and to test the package.

# Install Rare7
install_github("evertonmaciel/Rare7")

# Usage
rareData()
The main function is rareData, basically, this quantifies higher latitudes to quantify the proportion of distribution of a species; maximum abundance of a species and habitat number where species occur.

rarityForms()
The second function uses the output provided by the first function. Then this function classifies the forms of rarity.



