tags$html(lang = "en",
  navbarPage("Art-Science Interplay",
    tags$head(tags$link(rel = "stylesheet", type = "text/css", href = "custom.css")),
      tabPanel("Artist statement", 
        fluidPage(
          h1("Artist statement"),
                                p("I have been working as an artist for over thirty years. I am fascinated by light, colour, lasers, technology and science. My initial curiosity in how artists can work with scientists was piqued in 1998 when I became aware of the SciArt scheme. The ethos of the SciArt scheme encouraged me, as an artist, to seek out Life Scientists to collaborate with because the methods we employ to create images are connected. We both use laser technology (I make laser-cut lightboxes), which requires knowledge of light, optics, and computer visualisation methods and I am fascinated by how I can use scientific image data innovatively. As a result, since 2010, a central part of my practice has involved contributing to scientific research projects as one of the research team."),
                                p("I identified a gap in knowledge while working with scientists in labs. There was a lack of understanding between the two disciplines of approaches to imaging and its potential. I wanted to discover if and how an artist-researcher can contribute to new methods of interdisciplinary approaches in advanced imaging and microscopy through collaborative practice. Over the last ten years I have collaborated with Advanced imaging and Microscopy specialists, working with a network of internationally renowned core imaging laboratories in the field of Life Science. My aim is to dismantle silo mentalities so that artist-researchers can collaborate with scientists to create new representations, insights and behavioural change. I implemented a four-stage framework and protocol underpinned by the inclusion of play. Each element helped me negotiate and interpret art and science collaboration in new ways by extending art and scientific methods of visualisation. This led to non-standard representations, technological advancements, and better intellectual and visualisation skills, hence enhancing practice-based research through collaboration. Each element helped me negotiate and interpret art and science collaboration in new ways by extending art and scientific methods of visualisation. I advanced three methods of production: an introspective, digital drawing method using limited tools; data montages where data and documentary footage are explored; and experimental moving image work, integrating documentary film footage and sound."),
                                div(
                                  a("- Joanne Berry-Frith", href = "https://www.joberry.co.uk/"), 
                                  style = "text-align: right;"
                                )
                              )),
                     tabPanel(
                       "Exhibition",
                       h1("Exhibition"),
                       fluidPage(HTML("Enjoy playing scientist, by changing the sliders on the left and seeing the images in different rotation, focus and implosion.<p></p>"),
                                 sidebarLayout(
                                   sidebarPanel(
                                     # Slider for Rotate
                                     sliderInput("rotate",
                                                 label = "Rotate",
                                                 min = 0,
                                                 max = 360,
                                                 value = 0),
                                     numericInput("rotateValue", 
                                                  label = "Rotate Value", 
                                                  value = 0, 
                                                  min = 0, 
                                                  max = 360),
                                     
                                     # Slider for Blur
                                     sliderInput("blur",
                                                 label = "Blur",
                                                 min = 0,
                                                 max = 20,
                                                 value = 0),
                                     numericInput("blurValue", 
                                                  label = "Blur Value", 
                                                  value = 0, 
                                                  min = 0, 
                                                  max = 20),
                                     
                                     # Slider for Implode
                                     sliderInput("implode",
                                                 label = "Implode",
                                                 min = -1,
                                                 max = 1,
                                                 value = 0,
                                                 step = 0.01),
                                     numericInput("implodeValue", 
                                                  label = "Implode Value", 
                                                  value = 0, 
                                                  min = -1, 
                                                  max = 1, 
                                                  step = 0.01),
                                     
                                     actionButton("update_chart",
                                                  label = "Update image")
                                   ),
                                   mainPanel(tabsetPanel(
                                     id = "image_viewer_tab_id",
                                     tabPanel("Image 1", 
                                              withSpinner(imageOutput("picture1", height = "auto"), type = 5),
                                              withSpinner(uiOutput("text1"), type = 5), 
                                              value = "image_1"
                                     ),
                                     tabPanel("Image 2",
                                              withSpinner(imageOutput("picture2", height = "auto"), type = 5),
                                              withSpinner(uiOutput("text2"), type = 5), 
                                              value = "image_2"
                                     ),
                                     tabPanel("Image 3",
                                              withSpinner(imageOutput("picture3", height = "auto"), type = 5),
                                              withSpinner(uiOutput("text3"), type = 5), 
                                              value = "image_3"
                                     ),
                                     tabPanel("Image 4",
                                              withSpinner(imageOutput("picture4", height = "auto"), type = 5),
                                              withSpinner(uiOutput("text4"), type = 5), 
                                              value = "image_4"
                                     ),
                                     tabPanel("Image 5",
                                              withSpinner(imageOutput("picture5", height = "auto"), type = 5),
                                              withSpinner(uiOutput("text5"), type = 5), 
                                              value = "image_5"
                                     )
                                   ))
                                 )
                       )
                     ), 
                     
                     # About ----
                     
                     tabPanel(
                       "About this virtual exhibition",
                       fluidPage(
                         h1("About this Exhibition"),
                         p("This virtual exhibition seeks to showcase qualitative material in an interactive way. It was created in R, with the following packages:"),
                         tags$ul(
                           tags$li(HTML("Attali D, Sali A (2024). <i>shinycssloaders: Add Loading Animations to a 'shiny' Output While It's Recalculating</i>. R package version 1.1.0, "), 
                                   tags$a(href = "https://CRAN.R-project.org/package=shinycssloaders", "https://CRAN.R-project.org/package=shinycssloaders")),
                           tags$li(HTML("Bengtsson H (2021). “A Unifying Framework for Parallel and Distributed Processing in R using Futures.” <i>The R Journal</i>, <b>13</b>(2), pages 208-227. "), 
                                   tags$a(href = "https://doi.org/10.32614/RJ-2021-048", "doi:10.32614/RJ-2021-048")),
                           tags$li(HTML("Chang W, Cheng J, Allaire J, Sievert C, Schloerke B, Xie Y, Allen J, McPherson J, Dipert A, Borges B (2024). <i>shiny: Web Application Framework for R</i>. R package version 1.10.0, "), 
                                   tags$a(href = "https://CRAN.R-project.org/package=shiny", "https://CRAN.R-project.org/package=shiny")),
                           tags$li(HTML("Cheng J (2024). <i>promises: Abstractions for Promise-Based Asynchronous Programming</i>. R package version 1.3.2, "), 
                                   tags$a(href = "https://CRAN.R-project.org/package=promises", "https://CRAN.R-project.org/package=promises")),
                           tags$li(HTML("Müller K (2020). <i>here: A Simpler Way to Find Your Files</i>. R package version 1.0.1, "), 
                                   tags$a(href = "https://CRAN.R-project.org/package=here", "https://CRAN.R-project.org/package=here")),
                           tags$li(HTML("Ooms J (2024). <i>magick: Advanced Graphics and Image-Processing in R</i>. R package version 2.8.5, "), 
                                   tags$a(href = "https://CRAN.R-project.org/package=magick", "https://CRAN.R-project.org/package=magick"),
                                   tags$li(HTML("Wickham H (2023). <i>httr: Tools for Working with URLs and HTTP</i>. R package version 1.4.7, "), 
                                           tags$a(href = "https://CRAN.R-project.org/package=httr", "https://CRAN.R-project.org/package=httr")),
                                   tags$li(HTML("Wickham H, Averick M, Bryan J, Chang W, McGowan LD, François R, Grolemund G, Hayes A, Henry L, Hester J, Kuhn M, Pedersen TL, Miller E, Bache SM, Müller K, Ooms J, Robinson D, Seidel DP, Spinu V, Takahashi K, Vaughan D, Wilke C, Woo K, Yutani H (2019). “Welcome to the tidyverse.” <i>Journal of Open Source Software</i>, <b>4</b>(43), 1686. "), 
                                           tags$a(href = "https://doi.org/10.21105/joss.01686", "doi:10.21105/joss.01686"))
                           )
                         ),
                         
                         
                         p("The source code can be found on ", tags$a(href = 'https://github.com/lboro-rdm/ArtOfScience.git', "GitHub")),
                         p("Copyright:"),
                         tags$ul(
                           tags$li("Text copyright (Artist's statement and image captions): Joanne Berry-Frith, CC-BY-NC-ND"),
                           tags$li("Image copyright: Joanne Berry-Frith, CC-BY-NC-ND"),
                           tags$li("Code copyright: Lara Skelly, MIT")
                         ),
                         p("The citation for this app is:"),
                         tags$ul(
                           tags$li("Skelly, Lara; Berry-Frith, Joanne. (2024). Art of Science: an interactive exhibition. Loughborough University. Online resource. ", tags$a(href = 'https://doi.org/10.17028/rd.lboro.26901427', "https://doi.org/10.17028/rd.lboro.26901427"))
                         ),
                         p(),
                         p("Created by Lara Skelly, Loughborough University. Funding was received from Arts Council England under the ", tags$a(href = 'https://www.artscouncil.org.uk/dycp', "Develop Your Creative Practice scheme")),
                         p(),
                         tags$img(src = "logo.png", width = "300px", alt = "Arts Council England logo"),
                         p(),
                       )
                     )
          ),
  tags$div(class = "footer", 
           fluidRow(
             column(12, 
                    tags$a(href = 'https://doi.org/10.17028/rd.lboro.28525481', 
                           "Accessibility Statement",
                           style = "color: #ffcc00 !important; text-decoration: none;") # Ensure the link is visible
             )
           ),
           style = "background-color: #333; color: #ffcc00 !important; padding: 10px; margin-top: 30px; text-align: center;"
  )
  
)