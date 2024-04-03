library(tidyverse)
library(arrow)

df <- arrow::read_parquet("data/tidyJulySample.parquet")

ak_df <- df |> 
  filter(state == "AK",
         office == "state house",
         n_cand == 1
         )
  