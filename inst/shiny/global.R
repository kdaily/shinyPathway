library(shiny)
library(paxtoolsr)

sifNetwork <- toSif(system.file("extdata", 
                                "biopax3-short-metabolic-pathway.owl",
                                package = "paxtoolsr"))
