server <- function(input, output) { 
  output$plot <- renderRcytoscapejs({
    cyNetwork <- createCytoscapeJsNetwork(nodeData, edgeData)
    rcytoscapejs(nodeEntries=cyNetwork$nodes, edgeEntries=cyNetwork$edges)
  })
  
}
