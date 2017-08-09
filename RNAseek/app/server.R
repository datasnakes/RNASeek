library(shiny)
library(cummeRbund)

# Define server logic required to draw a histogram
shinyServer(function(input, output) {
   
  plotInput <- function(){
    csVolcanoMatrix(genes(cuff))
    }
  
  output$volcano <- renderPlot(
    print(plotInput())
  )

  output$download_volcano <- downloadHandler(
    filename = "volcanoplot.png",
    content = function(file) {
      png(file)
      print(plotInput())
      dev.off()
    })

   # output$heatmap <- renderPlot({
   #   csHeatmap(myGenes, cluster='both')
   # })

})
