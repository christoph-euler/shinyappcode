library(shiny)

shinyUI(fluidPage(
  
  # Application title
  titlePanel("Scatterplot and straight line"),
  
  # Sidebar with a slider input for intercept and slope
  sidebarLayout(
    sidebarPanel(
      helpText("Select slope and y axis intercept for straight line."),
       sliderInput("slope",
                   "Slope",
                   min = -3,
                   max = 3,
                   step=0.1,
                   value = 1),
       
      sliderInput("intercept",
                  "intercept",
                  min = 0,
                  max = 10,
                  step=0.5,
                  value = 0)
    ),
    
    # Show a plot with line
    mainPanel(
      tags$div(class = "h2", checked = NA,
               tags$p("Plot")
      ),
      plotOutput("plots"),
      
      tags$div(class = "h2", checked = NA,
              tags$p("Documentation")
      ),
      tags$div(class = "body", checked = NA,
              tags$p("Use the sliders on the left to select values for the y axis intercept and slope of the blue straight line in the plot above.")
      )
    )
  )
))
