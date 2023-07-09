# pacman is a package manager package -  You just need to install pacman once, 
# and load it in every new session. Then, the function p_load, which is from pacman package, 
# allows you to install (if not already) and load all the required packages by passing their 
# names as arguments in the p_load function. 

install.packages("pacman") # install the package pacman
library(pacman) # laod the ackage in the current session
p_load("factoextra") # install (if not already) and load the package factoextra. if already installed,
# this will only load the package without installing again(redundant)


# PCA on IRIS dataset


# IRIS dataset is already available in base R. However, it can also be read from the csv file in your working directory
iris <- iris

# Only the first four columns are the features and we will use them in our PCA
# prcomp is available in base package, we also need to center and scale our variables- recommended whenever
# use a distance measure in our algorithm
pca_iris <- prcomp(iris[,-5], center = TRUE, scale. = TRUE) # we remove the fifth column for PCA


summary(pca_iris) # Examine the results of PCA model 
# We note that the first component explains almost 73% and 2nd component explains around 23%, first two epxlain  almost 96%

P_components <- pca_iris$x #extract principal components 

fviz_pca_ind(pca_iris,  # This will plot individual obsrevations in a scatter plot where PC1 and PC2 are the two axes. 
             label = "none", # hide individual labels
             habillage = iris$Species, # color by groups
             palette = c("#00AFBB", "#E7B800", "#FC4E07"),
             addEllipses = TRUE # Concentration ellipses
)


#################################################################################################




