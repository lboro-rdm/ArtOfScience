function(input, output, session) {

  download_images <- ExtendedTask$new(function(x){
    
    future_promise({
      
      download.file("https://repository.lboro.ac.uk/ndownloader/files/40017832", 
                    tempfile())
      download.file("https://repository.lboro.ac.uk/ndownloader/files/40017832", 
                    tempfile())
      download.file("https://repository.lboro.ac.uk/ndownloader/files/44908999", 
                    tempfile())
      download.file("https://repository.lboro.ac.uk/ndownloader/files/47255443", 
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
  
  output$text1 <- renderUI({
    HTML(paste0(
      "An example of a design drawing based on an imaging experiment devised by Dr. Nicholas Holliday. HEK293 is a cell line used in the assay (experiment). In this assay a 100 nanomolar (a scientific measurement of con-centration) of the hunger hormone ghrelin was added to the live cells and imaged under the microscope to see the fluorescent receptors (SNAP labelling) removed from the cell mem-brane over a 15minute time-series. (",
      a("Image and text source", href = "https://hdl.handle.net/2134/22357051"),
      ")"
                )
    )
  })
  
  # PICTURE 2 ----
  
  output$picture2 <- renderImage({
    
    modify_image()
    
    image_2_modified <- image_reactives$image_2
    
    temp_file <- tempfile(fileext='.jpg')
    image_write(image_2_modified, temp_file)
    list(src = temp_file,
         contentType = 'image/jpeg',
         width = '100%')
  })
  
  
  output$text2 <- renderUI({
    HTML(paste0(
      "The image is based on an assay to test how successfully the fluorescent receptors 
(SNAP labelling) could be removed from the cell membrane over a 20minute time-series. The drawing is made from stills of a stereo-im-age movie made using Axio-Vision software. A four-layered design drawing was created and used as a template for the laser-cut image housed in a light-box and lit with LEDs. (",
      a("Image and text source", href = "https://hdl.handle.net/2134/22357051"),
      ")"
               
               )
         )
  })
  
  # PICTURE 3 ----
  output$picture3 <- renderImage({
    
    modify_image()
    
    image_3_modified <- image_reactives$image_3
    
    temp_file <- tempfile(fileext='.jpg', tmpdir = tempdir())
    image_write(image_3_modified, path = temp_file)
    list(src = temp_file,
         contentType = 'image/jpeg',
         width = '100%')
  })
  output$text3 <- renderUI({
    HTML(paste0(
      "A Radiolarian imaged on a Zeiss Ultra Plus Scanning Electron Microscope (SEM). 
     The drawing was constructed using simple hand-drawn vector shapes (squares and rectangles) 
     in Adobe Illustrator. Digital drawing techniques were employed to highlight key details 
     of the Radiolarian's structural intricacy. The transcribed information was copied, pasted, 
     and rotated in five-degree increments four times, resulting in a drawn representation of 
     Photogrammetry. (",
      a("Text source", href = "https://www.taylorfrancis.com/chapters/edit/10.1201/b19744-12/visualization-scientific-image-data-art-data-jo-berry?context=ubx&refId=f6c81bfd-51da-437b-9731-bcbd55205773"), 
      ", ",
      a("Image source", href = "https://doi.org/10.17028/rd.lboro.25359211"),
      ")"
    ))
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
  output$text4 <- renderUI({
    HTML(paste0(
      "Raw data mixed with software experiments and digital drawings of a cross-section of skin one with a hair follicle. (",
      a("Image and text source", href = "https://doi.org/10.17028/rd.lboro.26106589"),
      ")"
        )
    )
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
  
  output$text5 <- renderUI({
    HTML(paste0(
      "This drawing  is constructed of nine-layers. Raw data of human stem-cell-derived cardiomyocytes were copied at 100% transparency, then re-copied at 66% transparency, and offset. The original time-consuming design drawing was copied and pasted five times. Solid and dashed vector lines created the appearance of movement: 1] pink line was 1-point stroke weight, dashed; 2] light orange 1-point stroke weight, dashed; 3] orange 1-point stroke weight; 4] skin-tone 0.75-point stroke weight 5] brown 2- point stroke weight, dashed and 6] the nucleus outline coloured blue at 1-point stroke weight, dashed. At the same time, I asked myself why I wanted to make imperfect replications of human stem-cells-derived cardiomyocytes? Why was it important to develop a laborious method of tracing zoomed-in pixel detail, illuminated on-screen?  It was a time-consuming paradoxical method of drawing, yet I recognised the drawings I made were subtly re-mapping complexity. The drawings are exemplars of play and creativity, imbued with playfulness. I heavily invested in the creative process of drawing: observation, selection and action, in order to illuminate the potential of play to generate knowledge. The creative and intellectual game I played as I constructed digital drawings was immersive and cyclical. Through praxis, I was able to comprehend the mediating role of technology and how components arise as a result of this distinct re-mapping process. It was a practical example of how I gained a deeper understanding of how computer technology was shaping my experience of drawing, as human and non-human activity connected, and from it, I gained tacit knowledge (",
      a("Image and text source", href = "https://doi.org/10.17028/rd.lboro.27907866"),
      ")"
      )
    )
  
    })
}
