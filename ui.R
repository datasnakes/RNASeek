library(shiny)
library(DESeq2)
library(shinythemes)


# Define UI for application that draws a histogram
shinyUI(
  navbarPage(
      theme = shinytheme("yeti"), 
      inverse = FALSE,
      title = "RNASeek",
      
      # Home Tab
      tabPanel("Data Input",
               HTML('<!-- Welcome Banner -->
                             <center><div class="jumbotron"><h1>RNASeek</h1>
                             <br/>
                    <p>A shiny app to perform rnaseq differential analysis using deseq2.<p>
                    <p>Checkout the <a href="">tutorial</a> to learn more!</p></center>'),
               br(),
               # Copy the line below to make a file upload manager
               fluidRow(column(12, align = "center",
                               fileInput("counts_file",
                                         accept = c("text/csv", ".csv"),
                                         label = h4("Select your merged counts file")))),
               # Copy the line below to make a file upload manager
               fluidRow(column(12, align = "center",
                               fileInput("anno_file",
                                         accept = c("text/csv", ".csv"),
                                         label = h4("Select your annotation file"))))),
      # Table Viewer
      tabPanel("Table View",
               sidebarPanel("Select a table to view",
                            width = 2),
               mainPanel(
                 
                 # Output: Data file
                 tableOutput("anno")
                 
               )),
      
      
      # Quality Control Analysis Tab

      # Expression Analysis Tab

      
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
                   )),
      # qPCR Analysis Tab
      tabPanel("About",
               includeHTML("www/about.html"))
    ))
