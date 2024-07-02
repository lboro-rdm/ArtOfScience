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
      id = "image_viewer_tab_id",
      tabPanel("Image 1", 
               imageOutput("picture1", height = "auto") %>% withSpinner(),
               textOutput("text1"),
               value = "image_1"
      ),
      tabPanel("Image 2", 
               imageOutput("picture2", height = "auto") %>% withSpinner(),
               textOutput("text2"),
               value = "image_2"
      ),
      tabPanel("Image 3", 
               imageOutput("picture3", height = "auto") %>% withSpinner(),
               textOutput("text3"),
               value = "image_3"
      ),
      tabPanel("Image 4", 
               imageOutput("picture4", height = "auto") %>% withSpinner(),
               textOutput("text4"),
               value = "image_4"
      ),
      tabPanel("Image 5", 
               imageOutput("picture5", height = "auto") %>% withSpinner(),
               textOutput("text5"),
               value = "image_5"
      )
    ))
  )
  
)