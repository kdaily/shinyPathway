## ui.R ##
library(shinydashboard)

dashboardPage(
  dashboardHeader(),
  dashboardSidebar(),
  dashboardBody(
    fluidRow(
      box(
        rcytoscapejsOutput("plot", height="600px")
        )
      )
  )
)
