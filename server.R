library(shiny)
library(DESeq2)

# Allow large files to be uploaded
options(shiny.maxRequestSize=5000*1024^2)

# Read input files
# counts <- as.matrix(read.csv(input$counts_file$datapath, row.names = "Genes"))
# anno_data <- read.csv(input$anno_file$datapath, row.names = 1)


# Define server logic 
shinyServer(function(input, output) {
  
  output$anno <- renderTable({
    
    # will be NULL initially. After the user selects
    # and uploads a file, head of that data file by default,
    # or all rows if selected, will be shown.
    
    req(input$anno_file)
    
    df <- read.csv(input$anno_file$datapath, sep = ",", check.names=FALSE)
    
    return(df)
    
  })
  
})
