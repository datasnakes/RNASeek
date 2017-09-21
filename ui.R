library(shiny)
library(cummeRbund)
library(shinythemes)


# Define UI for application that draws a histogram
shinyUI(
  navbarPage(
      theme = shinytheme("yeti"), 
      inverse = FALSE,
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
                 sidebarPanel(width = 2,
                              selectInput("dataset", "Select a plot to view:",
                                          choices = c("heatmap", "volcano")),
                              br(),
                              downloadButton("downloadData", "Download")),
                 mainPanel(plotOutput("plot", height = "800px"))
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
