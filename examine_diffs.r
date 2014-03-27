#What happened to my binary file. Git tells me it was changed but there are no diffs. 
#It is a stata format dataset so I can read it into R with library(foreign)...

library(devtools)
install_github("git2r", "ropensci")
library(git2r)

library(foreign)
data<-data.frame('ID'=1:1000,
                 'x'= sample(seq(from=0,to=1,length.out=1000),replace=TRUE,size=1000),
                 'y'= sample(seq(from=0,to=1,length.out=1000),replace=TRUE,size=1000))
write.dta(dataframe=data, file='points.dta')



repo<-repository(getwd())

newdata<-read.dta('points.dta')

##checkout the commit prior to the changes
checkout(commits(repo)[2])

olddata<-read.dta('points.dta')

#checkout the master again, this is the default to the checkout function
checkout()

#now I'm ready to compare the two objects: newdata and olddata...