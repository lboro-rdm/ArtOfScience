library(tidyverse)
library(shiny)
library(magick)
library(here)
library(shinycssloaders)
library(httr)
library(future)
library(promises)

future::plan(multisession)

image1url <- "https://repository.lboro.ac.uk/ndownloader/files/44908975"
image_1 <- image_read(here::here("my_shiny_app", "image_1.jpg"))

image2url <- "https://repository.lboro.ac.uk/ndownloader/files/44908990"
image_2 <- image_read(here::here("my_shiny_app", "image_2.jpg"))

image3url <- "https://repository.lboro.ac.uk/ndownloader/files/44908999"
image_3 <- image_read(here::here("my_shiny_app", "image_3.jpg"))

image4url <- "https://repository.lboro.ac.uk/ndownloader/files/44908981"
image_4 <- image_read(here::here("my_shiny_app", "image_4.jpg"))

image5url <- "https://repository.lboro.ac.uk/ndownloader/files/44908987"
image_5 <- image_read(here::here("my_shiny_app", "image_5.jpg"))

images_original <- list("image_1" = image_1, "image_2" = image_2,
                        "image_3" = image_3,"image_4" = image_4,"image_5" = image_5)