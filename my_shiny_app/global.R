library(tidyverse)
library(shiny)
library(magick)
library(here)
library(shinycssloaders)
library(httr)

download_convert_make_smaller <- function(img_url, new_image_name, reduce_size_factor = 6){
  img_url %>% 
    image_read() %>% 
    image_write(here::here("my_shiny_app", new_image_name))

  img_orig <- image_read(here::here("my_shiny_app", new_image_name))
  width_new_image <- round(image_info(img_orig)$width / reduce_size_factor)
  height_new_image <- round(image_info(img_orig)$height / reduce_size_factor)
  img_orig %>% 
    image_resize(paste0(width_new_image, "x", height_new_image)) %>% 
    image_write(here::here("my_shiny_app", new_image_name))
}

image1url <- "https://repository.lboro.ac.uk/ndownloader/files/44908975"
image_1 <- image1url %>% 
  download_convert_make_smaller("image_1.jpg") %>% 
  image_read(here::here("my_shiny_app", "image_1.jpg"))

image2url <- "https://repository.lboro.ac.uk/ndownloader/files/44908990"
image_2 <- image2url %>% 
  download_convert_make_smaller("image_2.jpg") %>% 
  image_read(here::here("my_shiny_app", "image_2.jpg"))

image3url <- "https://repository.lboro.ac.uk/ndownloader/files/44908999"
image_3 <- image3url %>% 
  download_convert_make_smaller("image_3.jpg") %>% 
  image_read(here::here("my_shiny_app", "image_3.jpg"))

image4url <- "https://repository.lboro.ac.uk/ndownloader/files/44908981"
image_4 <- image4url %>% 
  download_convert_make_smaller("image_4.jpg") %>% 
  image_read(here::here("my_shiny_app", "image_4.jpg"))

image5url <- "https://repository.lboro.ac.uk/ndownloader/files/44908987"
image_5 <- image5url %>% 
  download_convert_make_smaller("image_5.jpg") %>% 
  image_read(here::here("my_shiny_app", "image_5.jpg"))

images_original <- list("image_1" = image_1, "image_2" = image_2,
                        "image_3" = image_3,"image_4" = image_4,"image_5" = image_5)