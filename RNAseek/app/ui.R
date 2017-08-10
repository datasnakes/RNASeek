library(shiny)
library(cummeRbund)
library(shinythemes)


# Define UI for application that draws a histogram
shinyUI(
  navbarPage(
      theme = shinytheme("flatly"), #inverse = TRUE,
      title = "RNASeek",
      
      tabPanel("Home",
               HTML('<!-- Welcome Banner -->
                             <center><div class="jumbotron"><h1>RNASeek</h1>
                             <br/>
                    <p>A shiny app to perform and visualize RNA-seq analysis. </p></center> ')),
      
      # Use flow Layout for this tab
      tabPanel("Quality Control Analysis",
               flowLayout(plotOutput('disp'))),
      
      tabPanel("Expression Analysis",
               sidebarLayout(
                 sidebarPanel('Select a plot to view',
                              br(),
                              downloadButton("download_volcano", "Download Plot")),
                 mainPanel(plotOutput('volcano'))
               )),
      
      # Make source code downloadable or link to github
      # Allow user to view code as well
      tabPanel("Source Code",
               "The following source code is also present on our github repository.",
               br(),
               br(),
               tabsetPanel(
                   tabPanel('ui.R', 
                            includeMarkdown('www/ui.Rmd')),
                   tabPanel('server.R', 
                            includeMarkdown('www/server.Rmd')),
                   tabPanel('global.R', 
                            includeMarkdown('www/global.Rmd'))
                   ))
    ))
