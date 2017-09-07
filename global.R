library(cummeRbund)

cuff <- readCufflinks('data/diff_out_temp')

gene.features<-annotation(genes(cuff))

# Add downloading of packages to this file.
# Note the version of RSQLite - v1.1-2
# require(devtools)
# install_version("RSQLite", version = "1.1-2", repos = "http://cran.us.r-project.org")

# required_packages = c(
#   "shiny",
#   "RSQLite"
# )
# 
# packages_to_install = required_packages[!(required_packages %in% installed.packages()[, 1])]
# 
# if (length(packages_to_install) > 0) {
#   install.packages(packages_to_install, repos = "https://cran.rstudio.com")
# }