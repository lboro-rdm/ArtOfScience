library(tidyverse)
library(shiny)
library(magick)
library(here)
library(shinycssloaders)
library(httr)

image1url <- "https://repository.lboro.ac.uk/ndownloader/files/44908975"
image_1 <- image_read(image1url)
class(image_1)
image2url <- "https://repository.lboro.ac.uk/ndownloader/files/44908990"
image_2 <- image_read(image2url)
image3url <- "https://repository.lboro.ac.uk/ndownloader/files/44908999"
image_3 <- image_read(image3url)
image4url <- "https://repository.lboro.ac.uk/ndownloader/files/44908981"
image_4 <- image_read(image4url)
image5url <- "https://repository.lboro.ac.uk/ndownloader/files/44908987"
image_5 <- image_read(image5url)