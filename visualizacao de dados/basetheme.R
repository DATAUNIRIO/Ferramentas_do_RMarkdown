#devtools::install_github("KKPMW/basetheme")
library(basetheme)

#default
basetheme(NULL)
pairs(iris[,1:4], col=iris$Species)
legend("bottom", legend=unique(iris$Species), col=unique(iris$Species),pch=par("pch"), cex=0.8, horiz=TRUE, bty="n", inset=c(0,1), xpd=TRUE)

#clean
basetheme("clean")
pairs(iris[,1:4], col=iris$Species)
legend("bottom", legend=unique(iris$Species), col=unique(iris$Species),pch=par("pch"), cex=0.8, horiz=TRUE, bty="n", inset=c(0,1), xpd=TRUE)


#brutal
basetheme("brutal")
pairs(iris[,1:4], col=iris$Species)
legend("bottom", legend=unique(iris$Species), col=unique(iris$Species),pch=par("pch"), cex=0.8, horiz=TRUE, bty="n", inset=c(0,1), xpd=TRUE)

#ink
basetheme("ink")
pairs(iris[,1:4], col=iris$Species)
legend("bottom", legend=unique(iris$Species), col=unique(iris$Species),pch=par("pch"), cex=0.8, horiz=TRUE, bty="n", inset=c(0,1), xpd=TRUE)

#dark
basetheme("dark")
pairs(iris[,1:4], col=iris$Species)
legend("bottom", legend=unique(iris$Species), col=unique(iris$Species),pch=par("pch"), cex=0.8, horiz=TRUE, bty="n", inset=c(0,1), xpd=TRUE)


#deepblue
basetheme("deepblue")
pairs(iris[,1:4], col=iris$Species)
legend("bottom", legend=unique(iris$Species), col=unique(iris$Species),pch=par("pch"), cex=0.8, horiz=TRUE, bty="n", inset=c(0,1), xpd=TRUE)

#royal
basetheme("royal")
pairs(iris[,1:4], col=iris$Species)
legend("bottom", legend=unique(iris$Species), col=unique(iris$Species),pch=par("pch"), cex=0.8, horiz=TRUE, bty="n", inset=c(0,1), xpd=TRUE)

#minimal
basetheme("minimal")
pairs(iris[,1:4], col=iris$Species)
legend("bottom", legend=unique(iris$Species), col=unique(iris$Species),pch=par("pch"), cex=0.8, horiz=TRUE, bty="n", inset=c(0,1), xpd=TRUE)

#void
basetheme("void")
pairs(iris[,1:4], col=iris$Species)
legend("bottom", legend=unique(iris$Species), col=unique(iris$Species),pch=par("pch"), cex=0.8, horiz=TRUE, bty="n", inset=c(0,1), xpd=TRUE)


#Usage
#Everything is done by calling the basetheme() function. There are 4 different modes:

## 1. Choosing a theme by name
basetheme("clean")

## 2. Specifying a list with theme values
theme <- basetheme("clean")
theme$cex.main <- 2
basetheme(theme)

## 3. Specifying the values directly
basetheme(pch=19, bg="blue")

## 4. Removing the current theme
basetheme(NULL)

# Obtaining list of theme parametrs

# current theme
basetheme()
# specified theme
theme <- basetheme("clean")

#Additional parameters can be specified everytime. For example if you like a theme (say "minimal") but would like to change a few parameters:

basetheme("minimal", bg="grey", pch=1)

#Creating a Theme
#Simplest way is to obtain a default list of values and change them.
#Here is an example of creating a grey-ish sheme:

pars <- basetheme("default")
pars$palette <- c("black", grey.colors(8))  # numbered colors - shades of grey
pars$bg  <- "white"                         # some colors
pars$fg  <- "gray20"                        # some colors
pars$col <- "gray20"                        # some colors
pars$col.main <- "black"                    # some colors
pars$col.axis <- "gray20"                   # some colors
pars$col.lab  <- "gray20"                   # some colors
pars$family   <-  "mono"                    # change font
pars$lab      <-  c(10,10,7)                # more ticks on axes
pars$cex.axis <-  0.8                       # smaller axis labels
pars$las      <-  1                         # always horizontal axis labels
pars$rect.border <- "black"                 # box around the plot
pars$rect.lwd    <- 4                       # ticker border

basetheme(pars)

barplot(1:9, col=1:9, names=LETTERS[1:9], main="barplot", ylab="heights")
