library(shiny)
library(paxtoolsr)
library(rcytoscapejs)

sifNetwork <- toSif(system.file("extdata", 
                                "biopax3-short-metabolic-pathway.owl",
                                package = "paxtoolsr"))
