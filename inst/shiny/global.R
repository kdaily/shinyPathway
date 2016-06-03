library(dplyr)
library(shiny)
library(paxtoolsr)
library(rcytoscapejs)

searchResults <- searchPc(q = "glycolysis", type = "pathway")

searchResults <- xpathSApply(searchResults, 
                             "/searchResponse/searchHit/uri", 
                             xmlValue)

foo <- getPc(uri = searchResults[67])

biopaxFile <- tempfile()
saveXML(foo, file=biopaxFile)

sifNetwork <- toSif(inputFile = biopaxFile)

edgeData <- sifNetwork %>% 
  rename(source=PARTICIPANT_A, target=PARTICIPANT_B)

nodes <- unique(c(edgeData$source, edgeData$target))

nodeData <- data.frame(id=nodes, name=nodes, stringsAsFactors=FALSE)
