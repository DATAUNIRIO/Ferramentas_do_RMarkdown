
# install.packages('tableHTML')
library(tableHTML)
mycss <- make_css(list(c('table', 'td'), c('text-align', 'font-size'), c('center', '20px')),
                  list('th', c('background-color', 'height'), c('lightgreen', '30px')))
print(mycss)