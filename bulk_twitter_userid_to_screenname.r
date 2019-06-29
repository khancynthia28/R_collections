library(rtweet)
library(tidyverse)
library(devtools)
library(twitteR)


token <- create_token(
  app = "hurricane_migration",
  consumer_key = "###########################",
  consumer_secret = "####################################",
  access_token = "####################################",
  access_secret = "################################")

irmares <- readRDS("/home/cynthiak/Irma/residents.Rds")

colnames(irmares)

users <- lookup_users(irmares, token = token)

print(users$screen_name)

irma_names <- users$screen_name

write.csv(maria_names, file = "/home/cynthiak/IrmaNames.csv")
