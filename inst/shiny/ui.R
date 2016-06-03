## ui.R ##
library(shinydashboard)

dashboardPage(
  dashboardHeader(),
  dashboardSidebar(disable = TRUE),
  dashboardBody(
    fluidRow(
      box(width=4),
      box(width=8,
        rcytoscapejsOutput("plot")
      )
    )
    
  )
)
