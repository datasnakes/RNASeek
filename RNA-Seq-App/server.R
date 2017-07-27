library(shiny)
library(cummeRbund)

# Define server logic required to draw a histogram
shinyServer(function(input, output) {
   
  output$volcano <- renderPlot({
    csVolcanoMatrix(genes(cuff))
    })

  # output$heatmap <- renderPlot({
  #   csHeatmap(myGenes,cluster='both')
  # })
  
})
