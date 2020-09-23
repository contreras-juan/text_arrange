# ---- libreries ----
library(stringi)
library(stringr)

# ---- The function ----
text_arrange <- function(x, language = "english"){
  
  # This functions organizes a text to mine
   
    x <- tolower(x) # change to lower
    x <- gsub(pattern = "\\W", replace = " ", x) # drop punctuation
    x <- gsub(pattern = "\\d", replace = " ", x) # drop digits
    x <- stri_trans_general(x,"Latin-ASCII") # drop accents
    x <- removeWords(x, stopwords(language)) # drop stopwords
    x <- gsub(pattern = "\\b[A-z]\\b{1}", replace = "",  x)
    x <- stripWhitespace(x) 
    
    
    return(x)
  }

text_arrange(encuesta$P13, language = "spanish")
