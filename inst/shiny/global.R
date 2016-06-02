library(dplyr)
library(shiny)
library(paxtoolsr)
library(rcytoscapejs)

sifNetwork <- toSif(system.file("extdata", 
                                "biopax3-short-metabolic-pathway.owl",
                                package = "paxtoolsr"))

edgeData <- sifNetwork %>% 
  rename(source=PARTICIPANT_A, target=PARTICIPANT_B)

nodes <- unique(c(edgeData$source, edgeData$target))

nodeData <- data.frame(id=nodes, name=nodes, stringsAsFactors=FALSE)
