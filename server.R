library(shiny)

# Define server logic required to draw a plot
shinyServer(function(input, output) {
  
  data(anscombe)
  
  output$plots <- renderPlot({
    plot(anscombe$x1, anscombe$y1, data = anscombe, col = "red", pch = 21, bg = "orange", cex = 1.2,
         xlim = c(0, 15), ylim = c(0, 15), xlab = "x", ylab = "y")
    abline(a=input$intercept, b=input$slope, col = "blue")  
  })
  
})
