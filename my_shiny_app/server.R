function(input, output, session) {
  # PICTURE 1
  output$picture1 <- renderImage({
    picture1 <- image_read("image_1.jpg")
    temp_frame <- picture1 %>%
      image_rotate(input$rotate) %>%
      image_blur(input$blur, input$blur) %>%
      image_implode(input$implode)
    temp_file <- tempfile(fileext='.jpg', tmpdir = tempdir())
    image_write(temp_frame, path = temp_file)
    list(src = temp_file,
         contentType = 'image/jpeg',
         width = '100%')
  })
  output$text1 <- renderText({
    paste("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
  })
  # PICTURE 2
  output$picture2 <- renderImage({
    picture2 <- image_read(file.path("my_shiny_app", "image_2.jpg"))
    temp_frame <- picture2 %>%
      image_rotate(input$rotate) %>%
      image_blur(input$blur, input$blur) %>%
      image_implode(input$implode)
    temp_file <- tempfile(fileext='.jpg')
    image_write(temp_frame, temp_file)
    list(src = temp_file,
         contentType = 'image/jpeg',
         width = '100%')
  })
  output$text2 <- renderText({
    paste("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
  })
  
  # PICTURE 3
  output$picture3 <- renderImage({
    picture3 <- image_read(file.path("my_shiny_app", "image_3.jpg"))
    temp_frame <- picture3 %>%
      image_rotate(input$rotate) %>%
      image_blur(input$blur, input$blur) %>%
      image_implode(input$implode)
    temp_file <- tempfile(fileext='.jpg')
    image_write(temp_frame, temp_file)
    list(src = temp_file,
         contentType = 'image/jpeg',
         width = '100%')
  })
  output$text3 <- renderText({
    paste("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
  })
  
  # PICTURE 4
  output$picture4 <- renderImage({
    picture4 <- image_read(file.path("my_shiny_app", "image_4.jpg"))
    temp_frame <- picture4 %>%
      image_rotate(input$rotate) %>%
      image_blur(input$blur, input$blur) %>%
      image_implode(input$implode)
    temp_file <- tempfile(fileext='.jpg')
    image_write(temp_frame, temp_file)
    list(src = temp_file,
         contentType = 'image/jpeg',
         width = '100%')
  })
  output$text4 <- renderText({
    paste("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
  })
  
  # PICTURE 5
  output$picture5 <- renderImage({
    picture5 <- image_read(file.path("my_shiny_app", "image_5.jpg"))
    temp_frame <- picture5 %>%
      image_rotate(input$rotate) %>%
      image_blur(input$blur, input$blur) %>%
      image_implode(input$implode)
    temp_file <- tempfile(fileext='.jpg')
    image_write(temp_frame, temp_file)
    list(src = temp_file,
         contentType = 'image/jpeg',
         width = '100%')
  })
  
  output$text5 <- renderText({
    paste("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
  })
}
