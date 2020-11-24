library(shiny)

shinyUI(fluidPage(
  titlePanel("Predict MPG Consumption based on vehicle specification"),
  sidebarLayout(
    sidebarPanel(
      selectInput("am", label = "Type of Transmission", 
                  choices = list( "automatic" = "0", "manual" = "1" )),
            numericInput("wt", "What is the weigth (1000lbs)",0, min=1, max=8),
      numericInput("hp", "What is the Horsepower",0, min=50, max=600),
      submitButton("Find Out MPG Consumption"),
      
      ),
    mainPanel(
      tabsetPanel(
        tabPanel("Predicted MPG Consumption",
        h3("According to the input, the MPG Consumption is:"),
        h3(textOutput("prediction"))
              ),
        
        tabPanel("About The App",
                 p(h3("How to Use the Application")),
                 br(),
                  p(h4( "1. click on the following link to access to the shiny application")),
                 br(),
                  p(h4("2. upon display in the html page, there are input block on the left where you need to input the specification of the vehicle required. Below are the parameter required to predict the gasoline consumption (MPG- miles per gallon) and click on the button: Find MPG Consumption.")),
                 br(),
                  p(h4("The inputs required are:")),
                      p(h5("2. wt - weight (1,000lbs")),
                      p(h5("3. qsec- quarter mile time ( qsec )")),
                      p(h5("4. am- Type of Transmission"))
          
        )
        )
        
           )   
      )
  )
)

