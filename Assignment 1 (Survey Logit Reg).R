##loading raw data
mentalhhdata <- read.csv(file.choose())
str(mentalhhdata)

#the variables are all characterised as int so we need to convert them into factor variables
##for Gen
mentalhhdata[mentalhhdata$Gen == 0,]$Gen <- "F"
mentalhhdata[mentalhhdata$Gen == 1,]$Gen <- "M"
mentalhhdata$Gen <- as.factor(mentalhhdata$Gen)

## for Educ
mentalhhdata[mentalhhdata$Educ == 0,]$Educ<-"LH"
mentalhhdata[mentalhhdata$Educ == 1,]$Educ<-"HS"
mentalhhdata[mentalhhdata$Educ == 2,]$Educ<-"GR"
mentalhhdata[mentalhhdata$Educ == 3,]$Educ<-"PG"
mentalhhdata[mentalhhdata$Educ == 4,]$Educ<-"PHD"
mentalhhdata$Educ <- as.factor(mentalhhdata$Educ)

## for MS
mentalhhdata[mentalhhdata$MS == 0,]$MS<-"U"
mentalhhdata[mentalhhdata$MS == 1,]$MS<-"M"
mentalhhdata[mentalhhdata$MS == 2,]$MS<-"D"
mentalhhdata[mentalhhdata$MS == 3,]$MS<-"S"
mentalhhdata$MS <- as.factor(mentalhhdata$MS)

## for Vacc
mentalhhdata[mentalhhdata$Vacc == 0,]$Vacc<-"F"
mentalhhdata[mentalhhdata$Vacc == 1,]$Vacc<-"P"
mentalhhdata[mentalhhdata$Vacc == 2,]$Vacc<-"N"
mentalhhdata$Vacc <- as.factor(mentalhhdata$Vacc)

## for Infec
mentalhhdata[mentalhhdata$Infec == 0,]$Infec<-"I"
mentalhhdata[mentalhhdata$Infec == 1,]$Infec<-"II"
mentalhhdata[mentalhhdata$Infec == 2,]$Infec<-"III"
mentalhhdata[mentalhhdata$Infec == 3,]$Infec<-"N"
mentalhhdata$Infec <- as.factor(mentalhhdata$Infec)

##for Infecconc
mentalhhdata[mentalhhdata$Infecconc == 1,]$Infecconc <- "SD"
mentalhhdata[mentalhhdata$Infecconc == 2,]$Infecconc <- "D"
mentalhhdata[mentalhhdata$Infecconc == 3,]$Infecconc <- "N"
mentalhhdata[mentalhhdata$Infecconc == 4,]$Infecconc <- "A"
mentalhhdata[mentalhhdata$Infecconc == 5,]$Infecconc <- "SA"
mentalhhdata$Infecconc <- as.factor(mentalhhdata$Infecconc)

## for HHloss
mentalhhdata[mentalhhdata$Hhloss == 0,]$Hhloss<-"N"
mentalhhdata[mentalhhdata$Hhloss == 1,]$Hhloss<-"Y"
mentalhhdata$Hhloss <- as.factor(mentalhhdata$Hhloss)

## for CP
mentalhhdata[mentalhhdata$CP == 0,]$CP<-"S"
mentalhhdata[mentalhhdata$CP == 1,]$CP<-"E"
mentalhhdata[mentalhhdata$CP == 2,]$CP<-"U"
mentalhhdata$CP <- as.factor(mentalhhdata$CP)

## for Workloss
mentalhhdata[mentalhhdata$Workloss == 0,]$Workloss<-"N"
mentalhhdata[mentalhhdata$Workloss == 1,]$Workloss<-"Y"
mentalhhdata[mentalhhdata$Workloss == 2,]$Workloss<-"C"
mentalhhdata$Workloss <- as.factor(mentalhhdata$Workloss)

##for HHI
mentalhhdata[mentalhhdata$HHI == 0,]$HHI <- "<5"
mentalhhdata[mentalhhdata$HHI == 1,]$HHI <- "5-10"
mentalhhdata[mentalhhdata$HHI == 2,]$HHI <- "10-20"
mentalhhdata[mentalhhdata$HHI == 3,]$HHI <- ">20"
mentalhhdata$HHI <- as.factor(mentalhhdata$HHI)

##for HHI change
mentalhhdata[mentalhhdata$HHI.change == 0,]$HHI.change <- "N"
mentalhhdata[mentalhhdata$HHI.change == 1,]$HHI.change <- "I"
mentalhhdata[mentalhhdata$HHI.change == -1,]$HHI.change <- "D"
mentalhhdata$HHI.change <- as.factor(mentalhhdata$HHI.change)

##for HHI change overall
mentalhhdata[mentalhhdata$HHI.change.overall == -5,]$HHI.change.overall <- "D>100%"
mentalhhdata[mentalhhdata$HHI.change.overall == -4,]$HHI.change.overall <- "D75-100%"
mentalhhdata[mentalhhdata$HHI.change.overall == -3,]$HHI.change.overall <- "D50-75%"
mentalhhdata[mentalhhdata$HHI.change.overall == -2,]$HHI.change.overall <- "D25-50%"
mentalhhdata[mentalhhdata$HHI.change.overall == -1,]$HHI.change.overall <- "D<25%"
mentalhhdata[mentalhhdata$HHI.change.overall == 0,]$HHI.change.overall <- "N"
mentalhhdata[mentalhhdata$HHI.change.overall == 1,]$HHI.change.overall <- "I<25%"
mentalhhdata[mentalhhdata$HHI.change.overall == 2,]$HHI.change.overall <- "I25-50%"
mentalhhdata[mentalhhdata$HHI.change.overall == 3,]$HHI.change.overall <- "I50-75%"
mentalhhdata[mentalhhdata$HHI.change.overall == 4,]$HHI.change.overall <- "I75-100%"
mentalhhdata[mentalhhdata$HHI.change.overall == 5,]$HHI.change.overall <- "I>100%"
mentalhhdata$HHI.change.overall <- as.factor(mentalhhdata$HHI.change.overall)

##for HHI Change mag
mentalhhdata[mentalhhdata$HHI.change.mag == 0,]$HHI.change.mag <- "N"
mentalhhdata[mentalhhdata$HHI.change.mag == 1,]$HHI.change.mag <- "<25%"
mentalhhdata[mentalhhdata$HHI.change.mag == 2,]$HHI.change.mag <- "25-50%"
mentalhhdata[mentalhhdata$HHI.change.mag == 3,]$HHI.change.mag <- "50-75%"
mentalhhdata[mentalhhdata$HHI.change.mag == 4,]$HHI.change.mag <- "75-100%"
mentalhhdata[mentalhhdata$HHI.change.mag == 5,]$HHI.change.mag <- ">100%"
mentalhhdata$HHI.change.mag <- as.factor(mentalhhdata$HHI.change.mag)

##for Sleep
mentalhhdata[mentalhhdata$Sleep == 0,]$Sleep <- "<6h"
mentalhhdata[mentalhhdata$Sleep == 1,]$Sleep <- "6-8h"
mentalhhdata[mentalhhdata$Sleep == 2,]$Sleep <- ">8h"
mentalhhdata$Sleep <- as.factor(mentalhhdata$Sleep)

##for Foodhab
mentalhhdata[mentalhhdata$Foodhab == 0,]$Foodhab <- "N"
mentalhhdata[mentalhhdata$Foodhab == 1,]$Foodhab <- "JF"
mentalhhdata[mentalhhdata$Foodhab == 2,]$Foodhab <- "HF"
mentalhhdata$Foodhab <- as.factor(mentalhhdata$Foodhab)

## Physact
mentalhhdata[mentalhhdata$Physact == 0,]$Physact <- "N"
mentalhhdata[mentalhhdata$Physact == 1,]$Physact <- "Y"
mentalhhdata$Physact <- as.factor(mentalhhdata$Physact)

##for Screent
mentalhhdata[mentalhhdata$ScreenT == 0,]$ScreenT <- "<5"
mentalhhdata[mentalhhdata$ScreenT == 1,]$ScreenT <- "5-7"
mentalhhdata[mentalhhdata$ScreenT == 2,]$ScreenT <- ">7"
mentalhhdata$ScreenT <- as.factor(mentalhhdata$ScreenT)

##for WFH issues score
mentalhhdata[mentalhhdata$WFH.Issues.score == 0,]$WFH.Issues.score <- "N"
mentalhhdata[mentalhhdata$WFH.Issues.score == 1,]$WFH.Issues.score <- "Y"
mentalhhdata$WFH.Issues.score <- as.factor(mentalhhdata$WFH.Issues.score)

##for Health issues score
mentalhhdata[mentalhhdata$Health.issues.score == 0,]$Health.issues.score <- "N"
mentalhhdata[mentalhhdata$Health.issues.score == 1,]$Health.issues.score <- "Y"
mentalhhdata$Health.issues.score <- as.factor(mentalhhdata$Health.issues.score)

##for Travel
mentalhhdata[mentalhhdata$Travel == 0,]$Travel <- "N"
mentalhhdata[mentalhhdata$Travel == 1,]$Travel <- "Y"
mentalhhdata$Travel <- as.factor(mentalhhdata$Travel)

##for Mental Health score
mentalhhdata[mentalhhdata$Mental.health.score == 0,]$Mental.health.score <- "N"
mentalhhdata[mentalhhdata$Mental.health.score == 1,]$Mental.health.score <- "Y"
mentalhhdata$Mental.health.score <- as.factor(mentalhhdata$Mental.health.score)

str(mentalhhdata)
summary(mentalhhdata)

##checking a few cross tabs to understand the data distribution
xtabs(~Mental.health.score+Gen, data = mentalhhdata)

xtabs(~Mental.health.score+Workloss, data = mentalhhdata)

xtabs(~Mental.health.score+Health.issues.score, data = mentalhhdata)

xtabs(~Mental.health.score+HHI.change, data = mentalhhdata)

#running the logistic model
library(performance)

logistic_model1 <-glm(Mental.health.score ~ Age + Gen + Hhnum + Educ + MS + Infec + Infecconc +
                        Hhloss + CP + Workloss + HHI + HHI.change + HHI.change.overall + Sleep + Foodhab + 
                        Physact + ScreenT + WFH.Issues.score + Health.issues.score + Travel , data=mentalhhdata, family = "binomial")

summary(logistic_model1)
check_collinearity(logistic_model1)

pchisq(81.24, df=47, lower.tail=FALSE)

#dropping the physact variable

logistic_model2 <-glm(Mental.health.score ~ Age + Gen + Hhnum + Educ + MS + Infec + Infecconc + 
                        Hhloss + CP + Workloss + HHI + HHI.change + HHI.change.overall + Sleep + Foodhab + 
                        ScreenT + WFH.Issues.score + Health.issues.score + Travel , data=mentalhhdata, family = "binomial")
summary(logistic_model2)
check_collinearity(logistic_model2)

pchisq(80.01, df=46, lower.tail=FALSE)

#dropping the WFH.Issues.score, ms, age variable

logistic_model3 <-glm(Mental.health.score ~ Gen + Hhnum + Educ + Infec + Infecconc + 
                        Hhloss + CP + Workloss + HHI + HHI.change + HHI.change.overall + Sleep + Foodhab + 
                        ScreenT + Health.issues.score + Travel , data=mentalhhdata, family = "binomial")
summary(logistic_model3)
check_collinearity(logistic_model3)
pchisq(75.82, df=41, lower.tail=FALSE)


#dropping the foodhab and hhioverallchange variable
logistic_model4 <-glm(Mental.health.score ~ Gen + Hhnum + Educ + Infec + Infecconc + 
                        + Hhloss + CP + Workloss + HHI + HHI.change  + Sleep  + 
                        + ScreenT + Health.issues.score + Travel , data=mentalhhdata, family = "binomial")
summary(logistic_model4)
check_collinearity(logistic_model4)
pchisq(50.84, df=29, lower.tail=FALSE)

##adding interaction of cp with gen 
logistic_model5 <-glm(Mental.health.score ~ Gen + Hhnum + Educ + Infec + Infecconc + 
                        + Hhloss + CP + Workloss + HHI + HHI.change + Sleep  + 
                        + ScreenT + Health.issues.score + Travel + (CP*Gen), data=mentalhhdata, family = "binomial")
summary(logistic_model5)
check_collinearity(logistic_model5)
pchisq(58.5, df=31, lower.tail=FALSE)

#creating plots for the data

##piechart for mhdata; respondents experiencing mental health issues

###created dataframe for the same
sum(mentalhhdata$Mental.health.score == "N")
sum(mentalhhdata$Mental.health.score == "Y")
mhdata <- data.frame(response = c('Yes', 'No'),counts = c(86,154))
mhdata

library(plotrix)
piepercent<- round(100*mhdata$counts/sum(mhdata$counts), 1)
pie3D(mhdata$counts,labels =paste0(piepercent, "%")  ,explode = 0.2, main = "Respondents Experiencing Mental Health Issues", col = c("palegreen1", "royalblue4"),
      theta = 1,border = "white", shade = 0.6, labelcol = "black", labelcex = 1.5, cex.main = 2)
legend("bottomright", legend = c("Yes", "No"),
       fill =  c("palegreen1", "royalblue4"))

##bar chart for mhdata; respondents experiencing mental health issues by categories
library(ggplot2)
data1 <- read.csv(file.choose())
head(data1)
plot1 <- ggplot(data1, aes(ques, count, fill = group)) +
  geom_bar(stat="identity", position = "dodge") +
  labs(title="Multiple Bar plots")
plot1 + labs(title = "Mental Health Experience Of Respondents Over The Last 2 Years") + theme(legend.background = element_rect(fill = "lightblue", size = 0.5, linetype = "solid", colour ="black"))+
  theme(legend.title = element_blank()) + theme(legend.background = element_rect(fill = "lightblue", size = 0.5, linetype = "solid", colour ="darkblue")) +
  theme(legend.position="bottom") + theme(legend.text = element_text(colour="black", size=10, face="bold")) +
  ylab("(No. of respondents)")+
  theme(plot.title = element_text(color="black", size=18, face="bold"),
        axis.title.x = element_blank(),
        axis.title.y = element_text(color="black", size=14, face="bold")) +
  theme(axis.text.x = element_text(angle = 0, vjust = 0.5, hjust=1, face = "bold", size = 10, )) + 
  theme(plot.title = element_text(hjust=0.5))+
  theme(axis.line.x = element_line(color="black", size = 0.5),
        axis.line.y = element_line(color="black", size = 0.5)) + 
  theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank()) + 
  theme(panel.background = element_rect(fill = "white")) + theme(axis.text.y = element_text(face = "bold")) + scale_color_brewer(palette = "Accent") + theme(plot.margin = margin(1,1,1.5,1.2, "cm"))

