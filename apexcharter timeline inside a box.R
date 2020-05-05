#devtools::install_github("dreamRs/apexcharter")
library(apexcharter)

run_sparkbox_demo()
#----------------------------------------------------------

data(mpg, package = "ggplot2")
n_manufac <- dplyr::count(mpg, manufacturer)

apexchart() %>%
  ax_chart(type = "bar") %>%
  ax_plotOptions(bar = bar_opts(
    horizontal = FALSE,
    endingShape = "flat",
    columnWidth = "70%",
    dataLabels = list(
      position = "top"
    ))
  ) %>%
  ax_grid(
    show = TRUE,
    position = "front",
    borderColor = "#FFF"
  ) %>%
  ax_series(list(
    name = "Count",
    data = n_manufac$n
  )) %>%
  ax_colors("#112446") %>%
  ax_xaxis(categories = n_manufac$manufacturer) %>%
  ax_title(text = "Number of models") %>%
  ax_subtitle(text = "Data from ggplot2")
#----------------------------------------------------------


spark_data <- data.frame(
  date = Sys.Date() + 1:20,
  var1 = round(rnorm(20, 50, 10)),
  var2 = round(rnorm(20, 50, 10)),
  var3 = round(rnorm(20, 50, 10))
)
spark_box(
  data = spark_data,
  title = mean(spark_data$var1),
  subtitle = "Variable 1",
  color = "#FFF", background = "#2E93fA",
  title_style = list(color = "#FFF"),
  subtitle_style = list(color = "#FFF")
)

#----------------------------------------------------------