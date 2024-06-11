library(shiny)
library(reticulate)

# Use a Python virtual environment or Conda environment
use_virtualenv("c:/users/laras/onedrive/documents/.virtualenvs/r-reticulate", required = TRUE)  # replace 'myenv' with your environment name

# Import Python libraries
pil <- import("PIL")
image <- pil$Image
image_filter <- pil$ImageFilter

function(input, output, session){
  
  # Load initial images using PIL
  image_reactives <- reactiveValues(
    image_1 = image$open("path/to/image1.jpg"),
    image_2 = image$open("path/to/image2.jpg"),
    image_3 = image$open("path/to/image3.jpg"),
    image_4 = image$open("path/to/image4.jpg"),
    image_5 = image$open("path/to/image5.jpg")
  )
  
  observeEvent(c(input$implode, input$image_viewer_tab_id), {
    # Debug: Print the current image mode
    print(paste("Implode - Before:", image_reactives[[input$image_viewer_tab_id]]$mode))
    
    # Apply the 'implode' effect (EMBOSS as a placeholder)
    image_imploded <- image_reactives[[input$image_viewer_tab_id]]
    image_imploded <- image_imploded$filter(image_filter$EMBOSS)
    
    # Convert to 'RGB' mode if not already
    if (image_imploded$mode != "RGB") {
      image_imploded <- image_imploded$convert("RGB")
    }
    
    # Debug: Print the new image mode
    print(paste("Implode - After:", image_imploded$mode))
    
    image_reactives[[input$image_viewer_tab_id]] <- image_imploded
  }) 
  
  observeEvent(c(input$blur, input$image_viewer_tab_id), {
    # Debug: Print the current image mode
    print(paste("Blur - Before:", image_reactives[[input$image_viewer_tab_id]]$mode))
    
    # Apply the blur effect
    image_blurred <- image_reactives[[input$image_viewer_tab_id]]
    image_blurred <- image_blurred$filter(image_filter$GaussianBlur(radius = as.integer(input$blur)))
    
    # Convert to 'RGB' mode if not already
    if (image_blurred$mode != "RGB") {
      image_blurred <- image_blurred$convert("RGB")
    }
    
    # Debug: Print the new image mode
    print(paste("Blur - After:", image_blurred$mode))
    
    image_reactives[[input$image_viewer_tab_id]] <- image_blurred
  })
  
  observeEvent(c(input$rotate, input$image_viewer_tab_id), {
    # Debug: Print the current image mode
    print(paste("Rotate - Before:", image_reactives[[input$image_viewer_tab_id]]$mode))
    
    # Apply the rotate effect
    image_rotated <- image_reactives[[input$image_viewer_tab_id]]
    image_rotated <- image_rotated$rotate(as.integer(input$rotate))
    
    # Convert to 'RGB' mode if not already
    if (image_rotated$mode != "RGB") {
      image_rotated <- image_rotated$convert("RGB")
    }
    
    # Debug: Print the new image mode
    print(paste("Rotate - After:", image_rotated$mode))
    
    image_reactives[[input$image_viewer_tab_id]] <- image_rotated
  })
  
  render_image <- function(image) {
    image_path <- tempfile(fileext = '.jpg')
    image$save(image_path)
    list(src = image_path, contentType = 'image/jpeg', width = '100%')
  }
  
  output$picture1 <- renderImage({ render_image(image_reactives$image_1) })
  output$text1 <- renderText({ "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum." })
  
  output$picture2 <- renderImage({ render_image(image_reactives$image_2) })
  output$text2 <- renderText({ "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum." })
  
  output$picture3 <- renderImage({ render_image(image_reactives$image_3) })
  output$text3 <- renderText({ "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum." })
  
  output$picture4 <- renderImage({ render_image(image_reactives$image_4) })
  output$text4 <- renderText({ "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum." })
  
  output$picture5 <- renderImage({ render_image(image_reactives$image_5) })
  output$text5 <- renderText({ "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum." })
}
