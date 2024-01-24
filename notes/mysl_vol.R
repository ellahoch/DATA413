library(tidyr)
library(tidyverse)

new_vols <- read_csv("data/new_vols2024.csv")
old_vols <- read_csv("data/old_vols2024.csv")


only_new_vols <- anti_join(new_vols, old_vols, by = "ID")

write_csv(only_new_vols, "data/only_new_vols2024.csv")
