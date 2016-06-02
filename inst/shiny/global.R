library(shiny)
library(paxtoolsr)

sif <- toSif(system.file("extdata", 
                         "biopax3-short-metabolic-pathway.owl",
                         package = "paxtoolsr"))
