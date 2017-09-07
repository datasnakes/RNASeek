library(shiny)
library(cummeRbund)
library(shinythemes)


# Define UI for application that draws a histogram
shinyUI(
  navbarPage(
      theme = shinytheme("flatly"), #inverse = TRUE,
      title = "RNASeek",
      
      # Home Tab
      tabPanel("Home",
               HTML('<!-- Welcome Banner -->
                             <center><div class="jumbotron"><h1>RNASeek</h1>
                             <br/>
                    <p>A shiny app to perform and visualize RNA-seq analysis. </p></center> ')),
      
      # Quality Control Analysis Tab
      tabPanel("Quality Control Analysis",
               flowLayout(plotOutput('disp'))),
      
      # Expression Analysis Tab
      tabPanel("Expression Analysis",
               sidebarLayout(
                 sidebarPanel('Select a plot to view',
                              br(),
                              downloadButton("download_volcano", "Download Plot")),
                 mainPanel(plotOutput('volcano'))
               )),
      # qPCR Analysis Tab
      tabPanel("qPCR Analysis"),
      
      # Source code tab
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
