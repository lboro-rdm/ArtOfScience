navbarPage("Art-Science Interplay", 
           tabPanel("Artist statement", 
                    fluidPage(
                              p("I have been working as an artist for over thirty years. I am fascinated by light, colour, lasers, technology and science. My initial curiosity in how artists can work with scientists was piqued in 1998 when I became aware of the SciArt scheme. The ethos of the SciArt scheme encouraged me, as an artist, to seek out Life Scientists to collaborate with because the methods we employ to create images are connected. We both use laser technology (I make laser-cut lightboxes), which requires knowledge of light, optics, and computer visualisation methods and I am fascinated by how I can use scientific image data innovatively. As a result, since 2010, a central part of my practice has involved contributing to scientific research projects as one of the research team."),
                                p("I identified a gap in knowledge while working with scientists in labs. There was a lack of understanding between the two disciplines of approaches to imaging and its potential. I wanted to discover if and how an artist-researcher can contribute to new methods of interdisciplinary approaches in advanced imaging and microscopy through collaborative practice. Over the last ten years I have collaborated with Advanced imaging and Microscopy specialists, working with a network of internationally renowned core imaging laboratories in the field of Life Science. My aim is to dismantle silo mentalities so that artist-researchers can collaborate with scientists to create new representations, insights and behavioural change. I implemented a four-stage framework and protocol underpinned by the inclusion of play. Each element helped me negotiate and interpret art and science collaboration in new ways by extending art and scientific methods of visualisation. This led to non-standard representations, technological advancements, and better intellectual and visualisation skills, hence enhancing practice-based research through collaboration. Each element helped me negotiate and interpret art and science collaboration in new ways by extending art and scientific methods of visualisation. I advanced three methods of production: an introspective, digital drawing method using limited tools; data montages where data and documentary footage are explored; and experimental moving image work, integrating documentary film footage and sound."),
                              div(
                                a("- Joanne Berry-Frith", href = "https://www.joberry.co.uk/"), 
                                style = "text-align: right;"
                              )
)),
           tabPanel(
             "Exhibition",
             fluidPage(HTML("Enjoy playing scientist, by changing the sliders on the left and seeing the images in different rotation, focus and implosion.<p></p>"),
               sidebarLayout(
                 sidebarPanel(
                   sliderInput("rotate",
                               label = "Rotate",
                               min = 0,
                               max = 360,
                               value = 0),
                   sliderInput("blur",
                               label = "Blur",
                               min = 0,
                               max = 20,
                               value = 0),
                   sliderInput("implode",
                               label = "Implode",
                               min = -1,
                               max = 1,
                               value = 0,
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
      p("This virtual exhibition seeks to showcase qualitative material in an interactive way. It was created in R, with the following packages:"),
      tags$ul(
        tags$li("future: Henrik Bengtsson, A Unifying Framework for Parallel and Distributed Processing in R using Futures, The R Journal (2021) 13:2, pages 208-227, ", a("doi:10.32614/RJ-2021-048", href = "https://doi.org/10.32614/RJ-2021-048")),
        tags$li(tags$a(href = 'https://here.r-lib.org/', "Here")),
        tags$li("Httr: Wickham H (2023). httr: Tools for Working with URLs and HTTP. ", a("https://httr.r-lib.org/", href = "https://httr.r-lib.org/"), ",", a("https://github.com/r-lib/httr", href = "https://github.com/r-lib/httr")),
        tags$li("magick: Ooms J (2024). magick: Advanced Graphics and Image-Processing in R. R package version 2.8.5, ", a("https://docs.ropensci.org/magick/", href = "https://docs.ropensci.org/magick/"), ",", a("https://ropensci.r-universe.dev/magick", href = "https://ropensci.r-universe.dev/magick")),
        tags$li(tags$a(href = 'https://cran.r-project.org/web/packages/promises/index.html', "Promises")),
        tags$li(tags$a(href = 'https://shiny.posit.co/', "Shiny")),
        tags$li(tags$a(href = 'https://cran.r-project.org/web/packages/shinycssloaders/index.html', "Shinycssloaders")),
        tags$li(tags$a(href = 'https://www.tidyverse.org/', "Tidyverse"))
      ),
      p("Created by Lara Skelly, Loughborough University. Funding was received from Arts Council England under the ", tags$a(href = 'https://www.artscouncil.org.uk/dycp', "Develop Your Creative Practice scheme")),
      p(),
      tags$img(src = "logo.png", width = "300px"),
      p(),
      p("The source code can be found on ", tags$a(href = 'https://github.com/lboro-rdm/ArtOfScience.git', "GitHub")),
      p("Copyright:"),
      tags$ul(
        tags$li("Text copyright (Artist's statement and image captions): Joanne Berry-Frith, CC-BY-NC-ND"),
        tags$li("Image copyright: Joanne Berry-Frith, CC-BY-NC-ND"),
        tags$li("Code copyright: Lara Skelly, MIT")
      ),
      p("The citation for this app is:"),
      p("Skelly, Lara; Berry-Frith, Joanne. (2024). Art of Science: an interactive exhibition. Loughborough University. Online resource. ", tags$a(href = 'https://doi.org/10.17028/rd.lboro.26901427', "https://doi.org/10.17028/rd.lboro.26901427"))
    )
  )
)