library("tm", lib.loc="/Library/Frameworks/R.framework/Versions/3.2/Resources/library")
library(tm)
getSources()
getReaders()
res <- XML::readHTMLTable(paste0('http://cran.r-project.org/',
                                 + 'web/packages/available_packages_by_name.html'),
                          + which = 1)
res <- XML::readHTMLTable(paste0('http://cran.r-project.org/',
                                 + 'web/packages/available_packages_by_name.html'),
                          + which = 1)
res <- XML::readHTMLTable(paste0('http://cran.r-project.org/',
                                 + 'web/packages/available_packages_by_name.html'),
                          + which = 1)
res <- XML::readHTMLTable(paste0('http://cran.r-project.org/','web/packages/available_packages_by_name.html'), which = 1)
View(res)
v <- Corpus(VectorSource(res$V2))
v
inspect(head(v, 3))
getTransformations()
stopwords("english")
v <- tm_map(v, removeWords, stopwords("english"))
v
head(v)
v
v <- tm_map(v, removeWords, stopwords("english"))
inspect(head(v, 3))
tm_map
v
library(tm)
library(wordcloud)
#loading in the data
reviews<- read.csv(file.choose() , stringsAsFactors=FALSE)
View(reviews)
View(reviews)
#combining all the reviews togther
review_text <- paste(reviews$text, collapse="")
#setting up source and corpus
review_source <- VectorSource(review_text)
corpus <- Corpus(review_source)
#cleaning
corpus <- tm_map(corpus, content_transformer(tolower))
corpus <- tm_map(corpus, removePunctuation)
corpus <- tm_map(corpus, stripWhitespace)
corpus <- tm_map(corpus, removeWords,c("and"))
corpus <- tm_map(corpus, stopwords ("english"))
#making a document-term matrix
#dtm <- DocumentTermMatrix(corpus)
dtm <- TermDocumentMatrix(corpus)
dtm2 <- as.matrix(dtm)
#finding the most frequent terms
frequency <- colSums(dtm2)
frequency <- sort(frequency, decreasing=FALSE)
words <- names(frequency)
wordcloud(words[1:900], frequency[1:900], rot.per=FALSE)
words <- names(frequency)
wordcloud(words[1:9], frequency[1:9], rot.per=FALSE)
words <- names(frequency)
words
View(dtm2)
#direct to a file named “texts” where you’ll keep your data
cname <- file.path("~", "Desktop", "texts")
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
docs
head(docs)
inspect(docs)
Corpus
inspect(head(docs, 3))
docs <- tm_map(v, content_transformer(tolower))
docs <- tm_map(docs, content_transformer(tolower))
summary(docs)
#read your documents in the R terminal
inspect(docs)
dos
docs
print(docs)
dir()
docs
docs(1)
inspect(docs)
getElem()
getElem(tm)
getElem(docs)
install.packages("rJava")
library("rJava", lib.loc="/Library/Frameworks/R.framework/Versions/3.2/Resources/library")
help(rJava)
?rJava
?NLP
??rJava
library(rJava)
library(rJava)
install.packages(c("NLP", "openNLP", "RWeka", "qdap"))
install.packages("openNLPmodels.en", repos = "http://datacube.wu.ac.at/", type = "source")
library(NLP)
library(openNLP)
library(RWeka)
library(rJava)
bio <- readLines("data/nlp/anb-jarena-lee.txt")