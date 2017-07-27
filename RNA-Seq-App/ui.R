library(shiny)
library(cummeRbund)
library(shinythemes)


# Define UI for application that draws a histogram
shinyUI(
  navbarPage(
      theme = shinytheme("sandstone"), #inverse = TRUE,
      title = "RNA-Seq Analysis",
      
      tabPanel("Background"),
      
      # Use flow Layout for this tab
      tabPanel("Analysis",
               sidebarLayout(
                 sidebarPanel(),
                 mainPanel(plotOutput("volcano"))
               )),
      
      # Make source code downloadable via a zip file
      # Allow user to view code as well
      tabPanel("Source Code")
    ))
