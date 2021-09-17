myPlot <- function(){
  plotOutput("myPlot")
}

renderMyPlot <- function(input, output){
  output$myPlot <- renderPlot(
    {
      # generate bins based on input$bins from ui.R
      x    <- faithful[, 2]
      bins <- seq(min(x), max(x), length.out = input$mySlider + 1)
      
      # draw the histogram with the specified number of bins
      hist(x, breaks = bins, col = 'darkgray', border = 'white')
    }
  )
}

handleMyPlot <- function(input, output){
  renderMyPlot(input, output)
}