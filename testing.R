library(magick)

image1url <- "https://repository.lboro.ac.uk/ndownloader/files/44908975"

image1 <- image_read(image1url)

print(image1)
