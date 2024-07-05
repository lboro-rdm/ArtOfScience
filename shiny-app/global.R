library(tidyverse)
library(shiny)
library(magick)
library(here)
library(shinycssloaders)


url_image_1 <- "https://repository.lboro.ac.uk/ndownloader/files/44908975"

url_image_2 <- "https://repository.lboro.ac.uk/ndownloader/files/44908990"

url_image_3 <- "https://repository.lboro.ac.uk/ndownloader/files/44908999"

url_image_4 <- "https://repository.lboro.ac.uk/ndownloader/files/44908981"

url_image_5 <- "https://repository.lboro.ac.uk/ndownloader/files/44908987"


download_convert_make_smaller <- function(img_url, new_image_name, reduce_size_factor = 6){
  
  temp_jpg_file <- tempfile(fileext = ".jpg")
  
  download.file(img_url,
                temp_jpg_file)
  
  img_orig <- image_read(temp_jpg_file)
  
  width_new_image <- round(image_info(img_orig)$width / reduce_size_factor)
  
  height_new_image <- round(image_info(img_orig)$height / reduce_size_factor)
  
  img_orig %>% 
    image_resize(paste0(width_new_image, "x", height_new_image)) %>% 
    image_write(here::here(paste0("my_shiny_app/", new_image_name)))
  
}

url_image_1 %>% 
  download_convert_make_smaller("image-1.png")


url_image_2 %>% 
  download_convert_make_smaller("image-2.png")


url_image_3 %>% 
  download_convert_make_smaller("image-3.png")


url_image_4 %>% 
  download_convert_make_smaller("image-4.png")


url_image_5 %>% 
  download_convert_make_smaller("image-5.png")




# Using local file --------------------------------------------------------

image_1 <- image_read(here::here("my_shiny_app/image-1.png"))

image_2 <- image_read(here::here("my_shiny_app/image-2.png"))

image_3 <- image_read(here::here("my_shiny_app/image-3.png"))

image_4 <- image_read(here::here("my_shiny_app/image-4.png"))

image_5 <- image_read(here::here("my_shiny_app/image-5.png"))