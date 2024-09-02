function(input, output, session) {

  download_images <- ExtendedTask$new(function(x){
    
    future_promise({
      
      download.file("https://repository.lboro.ac.uk/ndownloader/files/44908975", 
                    tempfile())
      download.file("https://repository.lboro.ac.uk/ndownloader/files/44908990", 
                    tempfile())
      download.file("https://repository.lboro.ac.uk/ndownloader/files/44908999", 
                    tempfile())
      download.file("https://repository.lboro.ac.uk/ndownloader/files/44908981", 
                    tempfile())
      download.file("https://repository.lboro.ac.uk/ndownloader/files/44908987", 
                    tempfile())

      })
    
  })
  
  image_reactives <- reactiveValues(image_1 = image_1,
                                    image_2 = image_2,
                                    image_3 = image_3,
                                    image_4 = image_4,
                                    image_5 = image_5,
                                    download_started = FALSE)
  
  modify_image <- reactive({
    
    image_modified <- images_original[[input$image_viewer_tab_id]] %>%
      image_rotate(input$rotate) %>%
      image_blur(input$blur, input$blur) %>% 
      image_implode(input$implode)
    
    image_reactives[[input$image_viewer_tab_id]] <- image_modified
    
  }) %>% 

    bindEvent(input$update_chart, input$image_viewer_tab_id)
  
  
  
 
  # PICTURE 1
  output$picture1 <- renderImage({

    if(image_reactives$download_started == FALSE){
      image_reactives$download_started <- TRUE
      download_images$invoke(input$rotate)
      
    }
    
    modify_image()
    
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
    
    modify_image()
    
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
    
    modify_image()
    
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
    
    modify_image()
    
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
    
    modify_image()
    
    image_5_modified <- image_reactives$image_5
    
    temp_file <- tempfile(fileext='.jpg', tmpdir = tempdir())
    image_write(image_5_modified, path = temp_file)
    list(src = temp_file,
         contentType = 'image/jpeg',
         width = '100%')
    
  })
  
  output$text5 <- renderText({
    paste("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
  
    })
}
