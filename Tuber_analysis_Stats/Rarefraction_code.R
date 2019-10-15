#Rarefraction of samples:
#we want to know if we can enough sequences vs taxa, do this at multiple levels of taxa 

library(vegan)
library(tidyverse)
genus_16S <- read.csv('ghexp16Sspecies_rdp_edited.csv', header = T)


str(genus_16S)
dim(genus_16S)
genus_16S_N
?rowSums
row_rarefy <- rowSums(genus_16S[,-1])
raremin <- min(rowSums(genus_16S[,-1]))
genus_rare <- rarefy(genus_16S,raremin)
rarecurve(genus_16S[,-1],col = 'blue')

#notice that at 500 base pairs see that peaks at 10...so not nearly enough samples 

#predicted number of reads per sample was: Also predicted that we get 3-4 million reads per sample. And so, with that we submitted 2x312 samples and should have approximately 6,000 reads per sample. Obviously this is not the case! clearly something is wrong. We've noticed that there was some issues as well with sequencing run....causing lots of filtering.