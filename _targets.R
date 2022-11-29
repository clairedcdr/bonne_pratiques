library(targets)
source("R/functions.R")
tar_option_set(packages = c("dplyr", "forcats", "MASS", "yaml", "gt"))
list(
  tar_target(file_data, "data/individu_reg.parquet", format = "file"),
  tar_target(file_token, "R/secrets.yaml", format = "file"),
  tar_target(data, read_from_parquet(file_data), format = "parquet"),
  tar_target(token, read_yaml_secret(file_token, key = "jeton_api")),
  tar_target(table_age, produce_table_age(data))
)