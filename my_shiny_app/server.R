function(input, output, session) {

  image_reactives <- reactiveValues(image_1 = image_1,
                                    image_2 = image_2,
                                    image_3 = image_3,
                                    image_4 = image_4,
                                    image_5 = image_5)
  
  observeEvent(c(input$implode, input$image_viewer_tab_id),
               {

                 image_imploded <- image_reactives[[input$image_viewer_tab_id]] %>% 
                   image_implode(input$implode)
                 image_reactives[[input$image_viewer_tab_id]] <- image_imploded
                 
               }) 
  
  observeEvent(c(input$blur, input$image_viewer_tab_id),
               {
                 
                 image_blurred <- image_reactives[[input$image_viewer_tab_id]] %>% 
                   image_blur(input$blur, input$blur)
                 
                 image_reactives[[input$image_viewer_tab_id]] <- image_blurred
                 
               })
  
  observeEvent(c(input$rotate, input$image_viewer_tab_id),
               {
                 
                 image_rotated <- image_reactives[[input$image_viewer_tab_id]] %>% 
                   image_rotate(input$rotate)
                 
                 image_reactives[[input$image_viewer_tab_id]] <- image_rotated
                 
               })
  
  
  
  # PICTURE 1
  output$picture1 <- renderImage({
    image_1_modified <- image_reactives$image_1
    
    temp_file <- tempfile(fileext='.jpg', tmpdir = tempdir())
    image_write(image_1_modified, path = temp_file)
    list(src = temp_file,
         contentType = 'image/jpeg',
         width = '100%')
  })
  
  output$text1 <- renderText({
    paste("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
  })
  # PICTURE 2
  
  output$picture2 <- renderImage({
    
    image_2_modified <- image_reactives$image_2
    
    temp_file <- tempfile(fileext='.jpg')
    image_write(image_2_modified, temp_file)
    list(src = temp_file,
         contentType = 'image/jpeg',
         width = '100%')
  })
  
  
  output$text2 <- renderText({
    paste("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
  })
  
  # PICTURE 3
  output$picture3 <- renderImage({
    image_3_modified <- image_reactives$image_3
    
    temp_file <- tempfile(fileext='.jpg', tmpdir = tempdir())
    image_write(image_3_modified, path = temp_file)
    list(src = temp_file,
         contentType = 'image/jpeg',
         width = '100%')
  })
  output$text3 <- renderText({
    paste("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
  })
  
  # PICTURE 4
  output$picture4 <- renderImage({
    image_4_modified <- image_reactives$image_4
    
    temp_file <- tempfile(fileext='.jpg', tmpdir = tempdir())
    image_write(image_4_modified, path = temp_file)
    list(src = temp_file,
         contentType = 'image/jpeg',
         width = '100%')
  })
  output$text4 <- renderText({
    paste("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
  })
  
  # PICTURE 5
  output$picture5 <- renderImage({
    image_5_modified <- image_reactives$image_5
    
    temp_file <- tempfile(fileext='.jpg', tmpdir = tempdir())
    image_write(image_5_modified, path = temp_file)
    list(src = temp_file,
         contentType = 'image/jpeg',
         width = '100%')
    
  })
  
  output$text5 <- renderText({
    paste("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
  
  # # PICTURE 1
  # output$picture1 <- renderImage({
  #   image1url <- "https://repository.lboro.ac.uk/ndownloader/files/44908975"
  #   picture1 <- image_read(image1url)
  #   temp_frame <- picture1 %>%
  #     image_rotate(input$rotate) %>%
  #     image_blur(input$blur, input$blur) %>%
  #     image_implode(input$implode)
  #   temp_file <- tempfile(fileext='.jpg')
  #   image_write(temp_frame, path = temp_file)
  #   list(src = temp_file,
  #        contentType = 'image/jpeg',
  #        width = '100%')
  # })
  # output$text1 <- renderText({
  #   paste("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
  # })
  # # PICTURE 2
  # output$picture2 <- renderImage({
  #   image2url <- "https://repository.lboro.ac.uk/ndownloader/files/44908990"
  #   picture2 <- image_read(image2url)
  #   temp_frame <- picture2 %>%
  #     image_rotate(input$rotate) %>%
  #     image_blur(input$blur, input$blur) %>%
  #     image_implode(input$implode)
  #   temp_file <- tempfile(fileext='.jpg', tmpdir = tempdir())
  #   image_write(temp_frame, temp_file)
  #   list(src = temp_file,
  #        contentType = 'image/jpeg',
  #        width = '100%')
  # })
  # output$text2 <- renderText({
  #   paste("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
  # })
  # 
  # # PICTURE 3
  # output$picture3 <- renderImage({
  #   image3url <- "https://repository.lboro.ac.uk/ndownloader/files/44908999"
  #   picture3 <- image_read(image3url)
  #   temp_frame <- picture3 %>%
  #     image_rotate(input$rotate) %>%
  #     image_blur(input$blur, input$blur) %>%
  #     image_implode(input$implode)
  #   temp_file <- tempfile(fileext='.jpg')
  #   image_write(temp_frame, temp_file)
  #   list(src = temp_file,
  #        contentType = 'image/jpeg',
  #        width = '100%')
  # })
  # output$text3 <- renderText({
  #   paste("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
  # })
  # 
  # # PICTURE 4
  # output$picture4 <- renderImage({
  #   image4url <- "https://repository.lboro.ac.uk/ndownloader/files/44908981"
  #   picture4 <- image_read(image4url)
  #   temp_frame <- picture4 %>%
  #     image_rotate(input$rotate) %>%
  #     image_blur(input$blur, input$blur) %>%
  #     image_implode(input$implode)
  #   temp_file <- tempfile(fileext='.jpg')
  #   image_write(temp_frame, temp_file)
  #   list(src = temp_file,
  #        contentType = 'image/jpeg',
  #        width = '100%')
  # })
  # output$text4 <- renderText({
  #   paste("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
  # })
  # 
  # # PICTURE 5
  # output$picture5 <- renderImage({
  #   image5url <- "https://repository.lboro.ac.uk/ndownloader/files/44908987"
  #   picture5 <- image_read(image5url)
  #   temp_frame <- picture5 %>%
  #     image_rotate(input$rotate) %>%
  #     image_blur(input$blur, input$blur) %>%
  #     image_implode(input$implode)
  #   temp_file <- tempfile(fileext='.jpg')
  #   image_write(temp_frame, temp_file)
  #   list(src = temp_file,
  #        contentType = 'image/jpeg',
  #        width = '100%')
  # })
  # 
  # output$text5 <- renderText({
  #   paste("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
  # })

    })
}
