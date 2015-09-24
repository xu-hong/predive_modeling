#### STA 521 ###
#### Lab 3 ###
#### Tasks ####

#### Agenda Items ####
## 1. The TM Package ##
require (tm)
## Read in the data ##
load(file="docs.Rdata")
ls()
## 2. The Corpus Function ##
testCorpus <- Corpus(VectorSource(docs))
length(testCorpus)


## 3. Data Preprocessing ##
## lower case ##
testCorpus <- tm_map(testCorpus, content_transformer(tolower))

## punctuation removal ##
testCorpus <- tm_map(testCorpus, removePunctuation)

## number removal ##
testCorpus <- tm_map(testCorpus, removeNumbers)

## stemming ##
require(SnowballC)
testCorpus <- tm_map(testCorpus, stemDocument)
