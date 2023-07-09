# Install the following packages.


list_of_packages <- c("tibble", "bitops", "magrittr", "stringi", "XML", "stringr", "Hmisc","R6", 
                      "scales", "lazyeval", "ggplot2", "corrplot", "RGtk2","cairoDevice","rattle")

install.packages(list_of_packages, repos="https://cloud.r-project.org/", dependencies = TRUE)

# Additional packages
install.packages(c("tidyselect", "doBy", "ellipse", "mlbench", "amap", "ggdendro", "fpc", 
                   "randomForest", "DAAG", "arules"), dependencies = T, type = "binary")



library(rattle)
rattle()
