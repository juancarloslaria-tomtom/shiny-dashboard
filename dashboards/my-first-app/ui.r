library(shiny)
library(shinydashboard)

source('items/mySlider/mySlider.r')
source('items/myPlot/myPlot.r')

# Define UI for application that draws a histogram
ui <- dashboardPage(
  dashboardHeader(title = "My First App"),
  dashboardSidebar(
    sidebarMenu(
      menuItem(
        "Histogram", icon = icon('chart-bar'), tabName = 'hist'
      )
    )
  ),
  dashboardBody(
    tabItems(
      tabItem(
        tabName = 'hist',
        h4("Old Faithful Geyser Data"),
        mySlider(),
        myPlot()
      )
    )
  )
)