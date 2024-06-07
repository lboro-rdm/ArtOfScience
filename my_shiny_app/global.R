library(tidyverse)
library(shiny)
library(magick)
library(here)
library(shinycssloaders)
library(httr)

download_and_read_image <- function(fig_url, file_name){
  response <- GET(fig_url, write_disk(here::here(file_name), overwrite = TRUE))
  
  if (response$status_code == 200) {
    image_read(file_name)
  } else {
    stop("Failed to download image")
  }
}

url_image_1 <- "https://repository.lboro.ac.uk/ndownloader/files/44908975"

image_1 <- url_image_1 %>% 
  download_and_read_image(here::here("image-1.jpg"))

url_image_2 <- "https://repository.lboro.ac.uk/ndownloader/files/44908990"

image_2 <- url_image_2 %>% 
  download_and_read_image(here::here("image-2.jpg"))

url_image_3 <- "https://repository.lboro.ac.uk/ndownloader/files/44908999"

image_3 <- url_image_3 %>% 
  download_and_read_image(here::here("image-3.jpg"))

url_image_4 <- "https://repository.lboro.ac.uk/ndownloader/files/44908981"

image_4 <- url_image_4 %>% 
  download_and_read_image(here::here("image-4.jpg"))

url_image_5 <- "https://repository.lboro.ac.uk/ndownloader/files/44908987"

image_5 <- url_image_5 %>% 
  download_and_read_image(here::here("image-5.jpg"))
