library(magick)
library(httr)

picture1 <- image_read("jbf_image1.jpg")
temp_frame <- picture1 %>%
  image_rotate(0) %>%
  image_blur(0, 0) %>%
  image_implode(0)
temp_file <- tempfile(fileext='.jpg', tmpdir = tempdir())
image_write(temp_frame, path = temp_file)
list(src = temp_file,
     contentType = 'image/jpeg',
     width = '100%')
