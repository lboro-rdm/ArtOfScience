# Charlie's code ----------------------------------------------------------

library(tidyverse)
library(here)
library(magick)

# Define image URLs
url_image_1 <- "https://repository.lboro.ac.uk/ndownloader/files/44908975"
url_image_2 <- "https://repository.lboro.ac.uk/ndownloader/files/44908990"
url_image_3 <- "https://repository.lboro.ac.uk/ndownloader/files/44908999"
url_image_4 <- "https://repository.lboro.ac.uk/ndownloader/files/44908981"
url_image_5 <- "https://repository.lboro.ac.uk/ndownloader/files/44908987"

# Function to download, convert and resize images
download_convert_make_smaller <- function(img_url, new_image_name, reduce_size_factor = 6) {
  # Create a temporary file for the downloaded image
  temp_jpg_file <- tempfile(fileext = ".jpg")
  
  # Download the image from the URL to the temporary file
  download.file(img_url, temp_jpg_file)
  
  # Read the downloaded image
  img_orig <- image_read(temp_jpg_file)
  
  # Calculate new dimensions for the resized image
  width_new_image <- round(image_info(img_orig)$width / reduce_size_factor)
  height_new_image <- round(image_info(img_orig)$height / reduce_size_factor)
  
  # Ensure the target directory exists
  dir.create(here::here("my_shiny_app"), recursive = TRUE, showWarnings = FALSE)
  
  # Resize and save the image
  img_orig %>% 
    image_resize(paste0(width_new_image, "x", height_new_image)) %>% 
    image_write(here::here(paste0("my_shiny_app/", new_image_name)))
}

# Process each image URL
url_image_1 %>% download_convert_make_smaller("image-1.png")
url_image_2 %>% download_convert_make_smaller("image-2.png")
url_image_3 %>% download_convert_make_smaller("image-3.png")
url_image_4 %>% download_convert_make_smaller("image-4.png")
url_image_5 %>% download_convert_make_smaller("image-5.png")

