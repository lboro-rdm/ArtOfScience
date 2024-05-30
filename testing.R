library(httr)

GET("https://repository.lboro.ac.uk/ndownloader/files/44908975", write_disk("image_1.jpg", overwrite = TRUE))

