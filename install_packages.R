list.of.packages <- c("dplyr", "knitr", "kableExtra", "ggplot2", "ggsignif", 
                      "cowplot", "lme4", "lmerTest", "MASS", "sjPlot", 
                      "emmeans", "ez", "afex", "effectsize", "pastecs") 

new.packages <- list.of.packages[!(list.of.packages %in% installed.packages()[,"Package"])]
if(length(new.packages)) install.packages(new.packages)


## Install papaja package in necessary (not yet available on CRAN)

# Install devtools package if necessary
if(!"devtools" %in% rownames(installed.packages())) install.packages("devtools")

# Install the package version from GitHub
devtools::install_github("crsh/papaja")