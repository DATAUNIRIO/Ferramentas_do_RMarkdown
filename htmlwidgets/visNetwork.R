
library(visNetwork)
path_to_images <- "https://raw.githubusercontent.com/datastorm-open/datastorm-open.github.io/master/visNetwork/data/img/indonesia/"

nodes <- data.frame(id = 1:4, 
                    shape = c("image", "circularImage"),
                    image = paste0(path_to_images, 1:4, ".png"),
                    label = "I'm an image")

edges <- data.frame(from = c(2,4,3,3), to = c(1,2,4,2))

visNetwork(nodes, edges, width = "100%") %>% 
  visNodes(shapeProperties = list(useBorderWithImage = TRUE)) %>%
  visLayout(randomSeed = 2)