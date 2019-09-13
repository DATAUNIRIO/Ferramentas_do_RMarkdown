#The goal of metathis is to help you add HTML <meta> tags to your R Markdown and Shiny apps.
#HTML <meta> tags provide browsers and social media with metadata about HTML pages. 
#Using <meta> tags will help your users find your articles, Shiny apps, and presentations, 
#and will help you make sure they look great in social media timelines.

#devtools::install_github("gadenbuie/metathis")

library(metathis)

meta() %>%
  meta_description(
    "This book will teach you how to do data science with R..."
  ) %>% 
  meta_name("github-repo" = "hadley/r4ds") %>% 
  meta_viewport() %>% 
  meta_social(
    title = "R for Data Science",
    url = "https://r4ds.had.co.nz",
    image = "https://r4ds.had.co.nz/cover.png",
    image_alt = "The cover of the R4DS book",
    og_type = "book",
    og_author = c("Garrett Grolemund", "Hadley Wickham"),
    twitter_card_type = "summary",
    twitter_creator = "@hadley"
  ) %>% 
  print()