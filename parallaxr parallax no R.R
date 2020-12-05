#devtools::install_github("martinctc/parallaxr")

## Load packages
library(parallaxr)

## Character vector of all MD files
all_md_str <- list.files(path = "examples/Markdown", full.names = TRUE)


## Loop through each MD file, parse, and return a single tibble
md_tibble <-
  all_md_str %>%
  purrr::map_dfr(parse_md) # Return a tibble with row-binding

## Output HTML file

generate_scroll_doc(path = "examples/parallaxr-examples-output.html",
                    inputs = md_tibble)


md_tibble <-
  purrr::bind_rows(parse_md("Markdown/1.md"),
                   parse_md("Markdown/2.md"),
                   parse_md("Markdown/3.md"))

generate_scroll_doc(path = "parallax-document.html",
                    inputs = md_tibble)

