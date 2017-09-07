library(shiny)
library(cummeRbund)

# Define server logic required to draw a histogram
shinyServer(function(input, output) {
   
  volcanoplotInput <- function(){
    csVolcanoMatrix(genes(cuff))
    }
  
  output$volcano <- renderPlot(
    print(volcanoplotInput())
  )

  output$download_volcano <- downloadHandler(
    filename = "volcanoplot.png",
    content = function(file) {
      png(file)
      print(volcanoplotInput())
      dev.off()
    })
  
  dispersionplotInput <- function(){
    csDendro(genes(cuff), replicates=T)
  }
  
  output$disp <- renderPlot(
    print(dispersionplotInput())
  )
  
  output$download_dispersion <- downloadHandler(
    filename = "dispersionplot.png",
    content = function(file) {
      png(file)
      print(dispersionplotInput())
      dev.off()
    })
  
  

   # output$heatmap <- renderPlot({
   #   csHeatmap(myGenes, cluster='both')
   # })

})
