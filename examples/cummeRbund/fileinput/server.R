library(shiny)


# Define server logic to read selected file ----
server <- function(input, output) {
  
  output$fpath <- renderPrint({
    input$csvfile$datapath
    })

  output$contents <- renderTable({
    
    # input$file1 will be NULL initially. After the user selects
    # and uploads a file, head of that data file by default,
    # or all rows if selected, will be shown.
    
    req(input$csvfile)
    
    df <- read.csv(input$csvfile$datapath,
                   header = input$header,
                   sep = input$sep,
                   quote = input$quote)
    
    if(input$disp == "head") {
      return(head(df))
    }
    else {
      return(df)
    }
    
  })
  
}
