# Load packages
library(tidyverse)
library(gt)

# load data
data <- read_csv("raw/airquality.csv") 

summary_table <- data |> 
  summarise(
    `Mean Temperature (°F)` = round(mean(Temp, na.rm = TRUE), 1),
    `SD Temperature (°F)` = round(sd(Temp, na.rm = TRUE), 1),
    `Mean Ozone (ppb)` = round(mean(Ozone, na.rm = TRUE), 1),
    `SD Ozone (ppb)` = round(sd(Ozone, na.rm = TRUE), 1)
  ) |> 
  gt() |>
  tab_header(
    title = "Summary of Temperature and Ozone",
    subtitle = "Descriptive statistics of air quality data"
  ) |>
  fmt_number(columns = everything(), decimals = 1) |>
  data_color(
    columns = everything(),
    colors = scales::col_numeric(
      palette = c("#d73027", "#fee08b", "#1a9850"),
      domain = NULL
    )
  ) |>
  opt_table_outline() |>
  opt_align_table_header(align = "center")  # Ensures headers are centered


