navbarPage("Art-Science Interplay", 
           tabPanel("Artist statement", 
                    fluidPage(HTML("<p>I have been working as an artist for over thirty years. I am fascinated by light, colour, lasers, technology and science. My initial curiosity in how artists can work with scientists was piqued in 1998 when I became aware of the SciArt scheme. The ethos of the SciArt scheme encouraged me, as an artist, to seek out Life Scientists to collaborate with because the methods we employ to create images are connected. We both use laser technology (I make laser-cut lightboxes), which requires knowledge of light, optics, and computer visualisation methods and I am fascinated by how I can use scientific image data innovatively. As a result, since 2010, a central part of my practice has involved contributing to scientific research projects as one of the research team.</p>",

"<p>I identified a gap in knowledge while working with scientists in labs. There was a lack of understanding between the two disciplines of approaches to imaging and its potential. I wanted to discover if and how an artist-researcher can contribute to new methods of interdisciplinary approaches in advanced imaging and microscopy through collaborative practice. Over the last ten years I have collaborated with Advanced imaging and Microscopy specialists, working with a network of internationally renowned core imaging laboratories in the field of Life Science. My aim is to dismantle silo mentalities so that artist-researchers can collaborate with scientists to create new representations, insights and behavioural change. I implemented a four-stage framework and protocol underpinned by the inclusion of play. Each element helped me negotiate and interpret art and science collaboration in new ways by extending art and scientific methods of visualisation. This led to non-standard representations, technological advancements, and better intellectual and visualisation skills, hence enhancing practice-based research through collaboration. Each element helped me negotiate and interpret art and science collaboration in new ways by extending art and scientific methods of visualisation. I advanced three methods of production: an introspective, digital drawing method using limited tools; data montages where data and documentary footage are explored; and experimental moving image work, integrating documentary film footage and sound.</p>",
                              "<p><a href='https://www.joberry.co.uk/'>- Joanne Berry-Frith</a></p>"))),
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
                            imageOutput("picture1", height = "auto"),
                            textOutput("text1"), value = "image_1"
                   ),
                   tabPanel("Image 2",
                            imageOutput("picture2", height = "auto"),
                            textOutput("text2"), value = "image_2"
                   ),
                   tabPanel("Image 3",
                            imageOutput("picture3", height = "auto"),
                            textOutput("text3"), value = "image_3"
                   ),
                   tabPanel("Image 4",
                            imageOutput("picture4", height = "auto"),
                            textOutput("text4"), value = "image_4"
                   ),
                   tabPanel("Image 5",
                            imageOutput("picture5", height = "auto"),
                            textOutput("text5"), value = "image_5"
                   )
                 ))
               )
             )
           ), 
           
           tabPanel("About this virtual exhibition", 
                    fluidPage(HTML("This virtual exhibition seeks to showcase qualitative material in an interactive way. It was created in R, with the following packages:
<ul>
  <li><a href='https://cran.r-project.org/web/packages/future/index.html'>Future</a></li>
  <li><a href='https://here.r-lib.org/'>Here</a></li>
  <li><a href='https://httr.r-lib.org/'>Httr</a></li>
  <li><a href='https://docs.ropensci.org/magick/index.html'>Magick</a></li>
  <li><a href='https://cran.r-project.org/web/packages/promises/index.html'>Promises</a></li>
  <li><a href='https://shiny.posit.co/'>Shiny</a></li>
  <li><a href='https://cran.r-project.org/web/packages/shinycssloaders/index.html'>Shinycssloaders</a></li>
  <li><a href='https://www.tidyverse.org/'>Tidyverse</a></li>
</ul>
                                   
    Created by Lara Skelly, Loughborough University. Funding was received from Arts Council England under the <a href='https://www.artscouncil.org.uk/dycp'>Develop Your Creative Practice scheme</a>. The sourcecode can be found on <a href='https://github.com/lboro-rdm/ArtOfScience.git'>GitHub</a>. The citation is:
    <p></p>
    <p>Skelly, Lara (2024). Art of Science: an interactive exhibition. Loughborough University. Online resource. <a href='https://doi.org/10.17028/rd.lboro.26901427'>https://doi.org/10.17028/rd.lboro.26901427</a></p>"))),
           
)

