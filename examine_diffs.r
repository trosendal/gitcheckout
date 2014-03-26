#What happened to my binary file. Git tells me it was changed but there are no diffs. 
#It is a stata format dataset so I can read it into R with library(foreign)...

library(devtools)
install_github("git2r", "ropensci")
library(git2r)
library(foreign)

repo<-repository(getwd())

newdata<-read.dta('points.dta')

##checkout the commit prior to the changes
checkout(commits(repo)[2])

olddata<-read.dta('points.dta')

#checkout the master again, this is the default to the checkout function
checkout()

#now I'm ready to compare the two objects: newdata and olddata...