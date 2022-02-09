library(rvest)
library(tidyverse)
box_offic_url = "https://www.the-numbers.com/market/2021/top-grossing-movies"

box_office_html = read_html(box_offic_url)

elements = html_elements(box_office_html, "div")

box_offic_table =  html_element(box_office_html, "table")

box_offic_tibble = html_table(box_offic_table)

View(box_offic_tibble)

file_name = "2021 Box Office.csv"

write.csv(box_offic_tibble, file = file_name)


