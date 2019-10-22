
setwd("C:/Users/Steven/Documents/GitHub/voce_tem_um_momento_para_falar_sobre_o_github/")
xaringan::summon_remark()


# xaringan::summon_remark() basically downloads a version of remark.js using R. You can certainly use other methods to download it, e.g., just save https://remarkjs.com/downloads/remark-latest.min.js to a local directory using your web browser, 
# and point the chakra option of xaringan::moon_reader() to the local path of remark.js.
# https://stackoverflow.com/questions/54128340/xaringansummon-remark-without-internet-connection-from-r





#Working offline
#To make slides work offline, you need to download a copy of remark.js in advance, because xaringan uses the online version by default. 
#You can use xaringan::summon_remark() to download the latest or a specified version of remark.js. 
#By default, it is downloaded to libs/remark-latest.min.js.

#Then change the chakra option in the YAML metadata to point to this file, e.g.,

#output:
#  xaringan::moon_reader:
#    chakra: libs/remark-latest.min.js

#-----------------------------------------------------------------------------------------------------------------------------------

# ---
#   title: "Comunicando seus resultados: "
# subtitle: "Criando apresentações com R"
# author: "Beatriz Milz e Haydee Svab - R-Ladies São Paulo"
# date: "20 de maio de 2019  <br> (Atualizado em: `r format(Sys.Date(), format='%d/%m/%Y')`)"
# encoding: "UTF-8"
# 
# output:
#   xaringan::moon_reader:
#   chakra: libs/remark-latest.min.js
# css: ["css/kunoichi.css", "css/ninjutsu.css", "css/rladies-fonts.css"]
# lib_dir: libs
# nature:
#   highlightStyle: github
# highlightLines: true
# countIncrementalSlides: false
# ---

#-----------------------------------------------------------------------------------------------------------------------------------

#Making the slides work offline can be tricky, since you may have other dependencies. 
#The remark.js dependency is easy to deal with because it is a single JavaScript file; 
#other dependencies such as MathJax can be extremely tricky. If you used Google web fonts in slides 
#(the default theme uses Yanone Kaffeesatz, Droid Serif, and Source Code Pro), 
#they will not work offline unless you download or install them locally. 
#The Heroku app google-webfonts-helper can help you download fonts and generate the necessary CSS.
#https://bookdown.org/yihui/rmarkdown/some-tips.html#working-offline