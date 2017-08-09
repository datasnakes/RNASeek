library(shiny)
library(cummeRbund)
library(shinythemes)


# Define UI for application that draws a histogram
shinyUI(
  navbarPage(
      theme = shinytheme("sandstone"), #inverse = TRUE,
      title = "RNA-Seq Analysis",
      
      tabPanel("Home",
               includeMarkdown('README.md')),
      
      # Use flow Layout for this tab
      tabPanel("Analysis",
               sidebarLayout(
                 sidebarPanel('Select a plot to view',
                              downloadButton("download_volcano", "Download Plot")),
                 mainPanel(plotOutput('volcano'))
               )),
      
      # Make source code downloadable via a zip file
      # Allow user to view code as well
      tabPanel("Source Code",
               tabsetPanel(
                   tabPanel('ui.R', 
                            includeMarkdown('www/ui.Rmd')),
                   tabPanel('server.R', 
                            includeHTML('www/server.Rmd')),
                   tabPanel('global.R', 
                            includeMarkdown('www/global.Rmd'))
                   ))
    ))
