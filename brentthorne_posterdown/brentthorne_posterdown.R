remotes::install_github('brentthorne/posterdown')
#https://github.com/brentthorne/posterdown/wiki/Installation-&-Usage-Guide

rmarkdown::draft(file = "mydraft.Rmd", template = "posterdown_html", package = "posterdown", create_dir=FALSE)
pagedown::chrome_print("mydraft.Rmd")
