#xaringanPrinter
#The goal of xaringanPrinter is to provide an easy interface to convert xaringan (remark.js) slides to other formats.

#remark.js slides aren’t self contained, and sometimes it’s not ideal, so you might want to convert of pdf. The function slides_pdf is just a wrapper for chrome_print from pagedown.
#You might also want a gif preview of slides. You can do this with slides_gif(). Under the hood, we do this by converting html slides to pdf, then the pdf pages to images, and the images to a gif.

remotes::install_github("EvaMaeRey/xaringanPrinter")

#This is a basic example which shows you how to solve a common problem:
library(xaringanPrinter)
## basic example code
slides_gif(input = "my_slideshow.html", output = "a_folder/my_slideshow.gif")