Analysis of Variance 
==================
## Ambient temperature influences tolerance to plant secondary compounds in a mammalian herbivore
P. Kurnath, N. D. Merz, M. D. Dearing

---------


###**Summary**
------------
> Some compounds in plants that are eaten by animals are known to become toxic once the animal reaches a certain body temperature. The objective of this study was to research temperature-dependent toxicity in a certain desert woodrat species (Neotoma lepida), this rodent eats lots of  creosote bush (Larrea tridentata) which contains plant secondary compounds. To determine the effect of ambient temperature on plant secondary compounds tolerance defined by creosote resin intake in desert woodrats. This type of research could have significant findings for the effect that climate change could have on the ingestion of certain foods in a variety of species.  Their method of analysis for their datasets consisted of doing an ANOVA on the two data sets, one had a larger sample size and multiple independent variables and the other had a small sample size with only one independent variable (room temperature) I am using the first and second data set that they used in experiment number one however I am taking all the independent variables out of the second dataset other than temperature. I am only interested in finding out if the smaller sample and the larger sample had consistent measurements and outcomes compared to each other and the only IV I will test is temperature. Both of the datasets were in .csv format. The post hoc tests were not necessary because as i suspected the p-values were the same and didn't matter if it was a small or large sample. I ran the TukeyHSD post-hoc test anyway just to see what the results were and I created a histogram for both data sets as well, it compared the frequency of resin amount to the temperature. The original study found that intake amounts of the secondary compound were less when the temperature was warm causing them to have a lower maximum dose. They had significant p-values where I didn't, this is due the the fact that I didn't account for the other variables they did and I only measured differences with the temperature.

####_Methods: _ 
#####Independent Variable = Temperature
#####Dependent Variable = Dosage/Toxicy level
######aid- Animal ID
######temp- cool or warm
######mtd-  maximum dosage


### Data Analysis
: One-Way Within Subjects (repeated measures) ANOVA
with TukeyHSD Post-Hoc Test and Histogram

#####Dataset 1 code:
 
 Project <- read.csv ("~/Desktop/Dataset.csv")
str(Project)
attach(Project)
summary(aov(mtd~temp+Error(aid/temp)))
hist(Project$mtd)
myanova <- aov(mtd~temp, data=Project)
TukeyHSD(myanova)

#####Dataset 2 code:
Project2 <- read.csv("~/Desktop/dataset2.csv")
str(Project2)
attach(Project2)
summary(aov(resin~temp+Error(aid/temp)))
hist(Project2$resin)
myanova2 <- aov(resin~temp, data=Project2)
TukeyHSD(myanova2)


### Citations:
#### Original Publication
Kurnath P, Merz ND, Dearing MD (2016) Ambient temperature influences tolerance to plant secondary compounds in a mammalian herbivore. Proceedings of the Royal Society B 283(1822): 20152387. http://dx.doi.org/10.1098/rspb.2015.2387
####Dryad data package:

Kurnath P, Merz ND, Dearing MD (2016) Data from: Ambient temperature influences tolerance to plant secondary compounds in a mammalian herbivore. Dryad Digital Repository. http://dx.doi.org/10.5061/dryad.6q16d


----------



