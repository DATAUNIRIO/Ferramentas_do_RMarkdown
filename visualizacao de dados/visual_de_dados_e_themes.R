
#devtools::install_github("jumpingrivers/prettyB")
#devtools::install_github("lizhmartin/styles")

#Prettified base graphics 
#provide package authors a low dependency method of making their plots look pretty
# https://github.com/jumpingrivers/prettyB

library("prettyB")

op = par(mfrow = c(1, 2))
plot(iris$Sepal.Length, iris$Sepal.Width)
plot_p(iris$Sepal.Length, iris$Sepal.Width)

#You can reset this via
prettyB::reset_prettyB()


par(mfrow = c(1, 1))
plot_p(iris$Sepal.Length, iris$Sepal.Width, 
       xlab = "Length", ylab = "Width",
       main = "The Iris data set", 
       sub = "I hate this data too")

op = par(mfrow = c(1, 2))
z = rt(100, 4)
hist(z, main = "The t-distribution")
hist_p(z, main = "The t-distribution")

hist(z, col = "red", freq = FALSE)
hist_p(z, col = "red", freq = FALSE)

op = par(mfrow = c(1, 2))
barplot(VADeaths, main = "Death Rates in Virginia")
barplot_p(VADeaths, main = "Death Rates in Virginia")

tN = table(stats::rpois(100, lambda = 3))
r = barplot(tN, col = rainbow(20))
lines(r, tN, type = "h", col = "red", lwd = 2)
r = barplot_p(tN, col = rainbow(20))
lines(r, tN, type = "h", col = "red", lwd = 2)

##================================================================================================
##                                                                                              
##    Nome:                                           
##                                                    
##    site:                                                                                                                                                 ##
##    Objetivo:
##    prof. Steven Dutt-Ross                          
##    UNIRIO           
##================================================================================================

