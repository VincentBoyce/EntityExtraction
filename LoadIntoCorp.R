#direct to a file named “texts” where you’ll keep your data
cname <- file.path("~", "Desktop", "resumes")

#call function
cname

#use this to check to see that your texts have loaded
dir(cname) 

#load the R package for text mining and then load your texts into R.
library(tm)
docs <- Corpus(DirSource(cname))
summary(docs)

#read your documents in the R terminal
inspect(docs)
