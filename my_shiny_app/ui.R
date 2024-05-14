fluidPage(
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
                  step = 0.01)
    ),
    mainPanel(tabsetPanel(
      tabPanel("Image 1", 
               imageOutput("picture1", height = "auto"),
               textOutput("text1")
      ),
      tabPanel("Image 2", 
               imageOutput("picture2", height = "auto"),
               textOutput("text2")
      ),
      tabPanel("Image 3", 
               imageOutput("picture3", height = "auto"),
               textOutput("text3")
      ),
      tabPanel("Image 4", 
               imageOutput("picture4", height = "auto"),
               textOutput("text4")
      ),
      tabPanel("Image 5", 
               imageOutput("picture5", height = "auto"),
               textOutput("text5")
      )
    ))
  )
)