########################################################
#NSSO 75th round data on social health consumption
########################################################

# load the necessary packages
library(readr)
library(dplyr)
library(tidyr)

## Extraction

# Extraction of level 5 from the NSSO 75th round data (individual level)


Hlevel5 <- read_fwf(file = "C:/Users/Rajsi Sah/Desktop/NSS 75th Round Health/R75250L05.txt", 
                    fwf_cols(centercd = c(1,3), fsusn = c(4,8), 
                             roundn = c(9,10), schedule = c(11,13), 
                             samplen = c(14,14), sector = c(15,15), 
                             region = c(16,18), district = c(19,20), 
                             stratum = c(21,22), substratum = c(23,24), 
                             subround = c(25,25), subsample = c(26,26), fodsubregion = c(27,30), 
                             hamlet = c(31,31), secstsubstratum = c(32,32), 
                             sample_hhln = c(33,34), level5 = c(35,36),
                             filler = c(37,37), hosp_srln = c(38,39), 
                             hosp_srlnmem = c(40,41), age = c(42,44), 
                             ailment = c(45,46), treatment = c(47,47), medic_inst = c(48,48), 
                             why_nogov = c(49,49), ward =c(50,50), 
                             admitted = c(51,51), discharged = c(52,52),
                             duration_stay = c(53,55), surgery = c(56,56), 
                             medicine = c(57,57), scans = c(58,58), diag_tests = c(59,59),
                             treated_bef = c(60,60), treat_nature = c(61,61),
                             treat_care = c(62,62), treat_dur = c(63,67), 
                             treat_disc = c(68,68), treatd_nature = c(69,69),
                             treatd_care = c(70,70), treatd_dur = c(71,73), 
                             times_hosp = c(48,50), reason_hosp = c(51,51),
                             blank = c(74,126),
                             nss = c(127,129), nsc = c(130,132), mult = c(133,142)),
                    col_types = cols(centercd = col_character(), fsusn = col_character(), 
                                     roundn = col_character(), schedule = col_character(), 
                                     samplen = col_character(), sector = col_character(), 
                                     region = col_character(), district = col_character(), 
                                     stratum = col_character(), substratum = col_character(), 
                                     subround = col_character(), subsample = col_character(), fodsubregion = col_character(), 
                                     hamlet = col_character(), secstsubstratum = col_character(), 
                                     sample_hhln = col_character(), level5 = col_character(),
                                     filler = col_character(), hosp_srln = col_character(), 
                                     hosp_srlnmem = col_character(), age = col_character(), 
                                     ailment = col_character(), treatment = col_character(), 
                                     medic_inst = col_character(), why_nogov = col_character(),
                                     ward = col_character(), admitted = col_character(),discharged = col_character(),
                                     duration_stay = col_character(), surgery = col_character(), 
                                     medicine = col_character(), scans = col_character(), diag_tests = col_character(),
                                     treated_bef = col_character(), treat_nature = col_character(),
                                     treat_care = col_character(), treat_dur = col_character(), 
                                     treat_disc = col_character(), treatd_nature = col_character(),
                                     treatd_care = col_character(), treatd_dur = col_character(), 
                                     times_hosp = col_character(), reason_hosp = col_character(),
                                     blank = col_character(),
                                     nss = col_number(), nsc = col_number(), mult = col_number()))


save(Hlevel5, file = "Hlevel5.RData")


## Extraction of level 6 from the NSSO 75th round data (individual level)

Hlevel6 <- read_fwf(file = "C:/Users/Rajsi Sah/Desktop/NSS 75th Round Health/R75250L06.txt", 
                    fwf_cols(centercd = c(1,3), fsusn = c(4,8), 
                             roundn = c(9,10), schedule = c(11,13), 
                             samplen = c(14,14), sector = c(15,15), 
                             region = c(16,18), district = c(19,20), 
                             stratum = c(21,22), substratum = c(23,24), 
                             subround = c(25,25), subsample = c(26,26), fodsubregion = c(27,30), 
                             hamlet = c(31,31), secstsubstratum = c(32,32), 
                             sample_hhln = c(33,34), level6 = c(35,36),
                             filler = c(37,37), hosp_srln = c(38,39), 
                             hosp_srlnmem = c(40,41), age = c(42,44), 
                             medadv = c(45,45), packagecomp = c(46,53), surgeonfee = c(54,61), 
                             medicine_rs = c(62,69), diag_tests_rs = c(70,77),
                             charge_bed = c(78,85), charge_others = c(86,93),
                             tot_medicexp = c(94,101), transport = c(102,109), 
                             tot_nonmedexp = c(110,117), tot_exp = c(118,125),
                             blank = c(126,126),
                             nss = c(127,129), nsc = c(130,132), mult = c(133,142)),
                    col_types = cols(centercd = col_character(), fsusn = col_character(), 
                                     roundn = col_character(), schedule = col_character(), 
                                     samplen = col_character(), sector = col_character(), 
                                     region = col_character(), district = col_character(), 
                                     stratum = col_character(), substratum = col_character(), 
                                     subround = col_character(), subsample = col_character(), fodsubregion = col_character(), 
                                     hamlet = col_character(), secstsubstratum = col_character(), 
                                     sample_hhln = col_character(), level6 = col_character(),
                                     filler = col_character(), hosp_srln = col_character(), 
                                     hosp_srlnmem = col_character(), age = col_character(), 
                                     medadv = col_character(), packagecomp = col_character(), surgeonfee = col_character(), 
                                     medicine_rs = col_character(), diag_tests_rs = col_character(),
                                     charge_bed = col_character(), charge_others = col_character(),
                                     tot_medicexp = col_character(), transport = col_character(), 
                                     tot_nonmedexp = col_character(), tot_exp = col_character(),
                                     blank = col_character(),
                                     nss = col_number(), nsc = col_number(), mult = col_number()))


save(Hlevel6, file = "Hlevel6.RData")


## Extraction of level 7 from the NSSO 75th round data (individual level)

Hlevel7 <- read_fwf(file = "C:/Users/Rajsi Sah/Desktop/NSS 75th Round Health/R75250L07.txt", 
                    fwf_cols(centercd = c(1,3), fsusn = c(4,8), 
                             roundn = c(9,10), schedule = c(11,13), 
                             samplen = c(14,14), sector = c(15,15), 
                             region = c(16,18), district = c(19,20), 
                             stratum = c(21,22), substratum = c(23,24), 
                             subround = c(25,25), subsample = c(26,26), fodsubregion = c(27,30), 
                             hamlet = c(31,31), secstsubstratum = c(32,32), 
                             sample_hhln = c(33,34), level7 = c(35,36),
                             filler = c(37,37), hosp_srln = c(38,39), 
                             hosp_srlnmem = c(40,41), age = c(42,44), 
                             insurance_reim = c(45,52), fin_src1 = c(53,53), fin_src2 = c(54,54), 
                             medicine_rs = c(62,69), diag_tests_rs = c(70,77),
                             hosp_place = c(55,55), state_cd = c(56,57),
                             hhincome_loss = c(58,65),
                             blank = c(66,126),
                             nss = c(127,129), nsc = c(130,132), mult = c(133,142)),
                    col_types = cols(centercd = col_character(), fsusn = col_character(), 
                                     roundn = col_character(), schedule = col_character(), 
                                     samplen = col_character(), sector = col_character(), 
                                     region = col_character(), district = col_character(), 
                                     stratum = col_character(), substratum = col_character(), 
                                     subround = col_character(), subsample = col_character(), fodsubregion = col_character(), 
                                     hamlet = col_character(), secstsubstratum = col_character(), 
                                     sample_hhln = col_character(), level7 = col_character(),
                                     filler = col_character(), hosp_srln = col_character(), 
                                     hosp_srlnmem = col_character(), age = col_character(), 
                                     insurance_reim = col_character(), fin_src1 = col_character(), fin_src2 = col_character(), 
                                     medicine_rs = col_character(), diag_tests_rs = col_character(),
                                     hosp_place = col_character(), state_cd = col_character(),
                                     hhincome_loss = col_character(),
                                     blank = col_character(),
                                     nss = col_number(), nsc = col_number(), mult = col_number()))


save(Hlevel7, file = "Hlevel7.RData")


#Assigning weights to our data extracted based on the primary document

Hlevel7$weight <- ifelse(Hlevel7$nss == Hlevel7$nsc, Hlevel7$mult/100, Hlevel7$mult/200)
Hlevel5$weight <- ifelse(Hlevel5$nss == Hlevel5$nsc, Hlevel5$mult/100, Hlevel5$mult/200)
Hlevel6$weight <- ifelse(Hlevel6$nss == Hlevel6$nsc, Hlevel6$mult/100, Hlevel6$mult/200)


#generating primary key for level 5,6, and 7 (individual data) using hospital serial no (hosp_srln)

Hlevel5$keyind <- paste0(Hlevel5$fsusn, Hlevel5$hamlet, Hlevel5$secstsubstratum, Hlevel5$sample_hhln, Hlevel5$hosp_srln)
Hlevel6$keyind <- paste0(Hlevel6$fsusn, Hlevel6$hamlet, Hlevel6$secstsubstratum, Hlevel6$sample_hhln, Hlevel6$hosp_srln)
Hlevel7$keyind <- paste0(Hlevel7$fsusn, Hlevel7$hamlet, Hlevel7$secstsubstratum, Hlevel7$sample_hhln, Hlevel7$hosp_srln)


Hlevel5_6 <- merge(Hlevel5,Hlevel6, by = "keyind", all = TRUE)
Hlevel7_6_5 <- merge(Hlevel5_6, Hlevel7, by = "keyind", all = TRUE)

View(Hlevel7_6_5)


#Performing analysis on the merged dataset

##structure of data

str(Hlevel7_6_5)



##dependent variable - type of medical institution
#independent variables - Age, Nature of ailment,Nature of treatment, Medical Services, Duration of stay in hospital (days), Type of ward, Whether any medical advice provided free,
#Medical expenditure(Rs.), Other non-medical expenses (Rs.), Major source of finance, Loss of household income due to hospitalisation, sector, region


##defining the variables

Hlevel7_6_5$govt_inst <- ifelse(Hlevel7_6_5$medic_inst == '1', 1, 0)
Hlevel7_6_5$govt_inst <- as.factor(Hlevel7_6_5$govt_inst)

#age categories
Hlevel7_6_5$age_category <- ifelse(Hlevel7_6_5$age.x<20, 0, ifelse(Hlevel7_6_5$age.x>59, 2, 1))

Hlevel7_6_5[Hlevel7_6_5$age_category == 0 & !is.na(Hlevel7_6_5$age_category),]$age_category<-"Young"
Hlevel7_6_5[Hlevel7_6_5$age_category == 1& !is.na(Hlevel7_6_5$age_category),]$age_category<-"Adult"
Hlevel7_6_5[Hlevel7_6_5$age_category == 2 & !is.na(Hlevel7_6_5$age_category),]$age_category<-"Elderly"
Hlevel7_6_5$age_category<-as.factor(Hlevel7_6_5$age_category)

#nature of ailment
Hlevel7_6_5$ailment <- as.factor(Hlevel7_6_5$ailment)

#Nature of treatment
Hlevel7_6_5[Hlevel7_6_5$treatment == 1 & !is.na(Hlevel7_6_5$treatment),]$treatment<-"Allopathy"
Hlevel7_6_5[Hlevel7_6_5$treatment == 2 & !is.na(Hlevel7_6_5$treatment),]$treatment<-"Indian"
Hlevel7_6_5[Hlevel7_6_5$treatment == 3 & !is.na(Hlevel7_6_5$treatment),]$treatment<-"Homoeopathy"
Hlevel7_6_5[Hlevel7_6_5$treatment == 4 & !is.na(Hlevel7_6_5$treatment),]$treatment<-"Yoga"
Hlevel7_6_5[Hlevel7_6_5$treatment == 9 & !is.na(Hlevel7_6_5$treatment),]$treatment<-"Others"
Hlevel7_6_5$treatment<-as.factor(Hlevel7_6_5$treatment)

#Medical Services
Hlevel7_6_5[Hlevel7_6_5$surgery == 1 & !is.na(Hlevel7_6_5$surgery),]$surgery<-"NR"
Hlevel7_6_5[Hlevel7_6_5$surgery == 2 & !is.na(Hlevel7_6_5$surgery),]$surgery<-"F"
Hlevel7_6_5[Hlevel7_6_5$surgery == 3 & !is.na(Hlevel7_6_5$surgery),]$surgery<-"PF"
Hlevel7_6_5[Hlevel7_6_5$surgery == 4 & !is.na(Hlevel7_6_5$surgery),]$surgery<-"P"
Hlevel7_6_5$surgery<-as.factor(Hlevel7_6_5$surgery)

Hlevel7_6_5[Hlevel7_6_5$medicine == 1 & !is.na(Hlevel7_6_5$medicine),]$medicine<-"NR"
Hlevel7_6_5[Hlevel7_6_5$medicine == 2 & !is.na(Hlevel7_6_5$medicine),]$medicine<-"F"
Hlevel7_6_5[Hlevel7_6_5$medicine == 3 & !is.na(Hlevel7_6_5$medicine),]$medicine<-"PF"
Hlevel7_6_5[Hlevel7_6_5$medicine == 4 & !is.na(Hlevel7_6_5$medicine),]$medicine<-"P"
Hlevel7_6_5$medicine<-as.factor(Hlevel7_6_5$medicine)

Hlevel7_6_5[Hlevel7_6_5$scans == 1 & !is.na(Hlevel7_6_5$scans),]$scans<-"NR"
Hlevel7_6_5[Hlevel7_6_5$scans == 2 & !is.na(Hlevel7_6_5$scans),]$scans<-"F"
Hlevel7_6_5[Hlevel7_6_5$scans == 3 & !is.na(Hlevel7_6_5$scans),]$scans<-"PF"
Hlevel7_6_5[Hlevel7_6_5$scans == 4 & !is.na(Hlevel7_6_5$scans),]$scans<-"P"
Hlevel7_6_5$scans<-as.factor(Hlevel7_6_5$scans)

Hlevel7_6_5[Hlevel7_6_5$diag_tests == 1 & !is.na(Hlevel7_6_5$diag_tests),]$diag_tests<-"NR"
Hlevel7_6_5[Hlevel7_6_5$diag_tests == 2 & !is.na(Hlevel7_6_5$diag_tests),]$diag_tests<-"F"
Hlevel7_6_5[Hlevel7_6_5$diag_tests == 3 & !is.na(Hlevel7_6_5$diag_tests),]$diag_tests<-"PF"
Hlevel7_6_5[Hlevel7_6_5$diag_tests == 4 & !is.na(Hlevel7_6_5$diag_tests),]$diag_tests<-"P"
Hlevel7_6_5$diag_tests<-as.factor(Hlevel7_6_5$diag_tests)


#Duration of stay in hospital (days), Medical expenditure(Rs.), Other non-medical expenses (Rs.), transport, Loss of household income due to hospitalisation
Hlevel7_6_5$duration_stay <- as.numeric(Hlevel7_6_5$duration_stay)
Hlevel7_6_5$tot_medicexp <- as.numeric(Hlevel7_6_5$tot_medicexp)
Hlevel7_6_5$tot_nonmedexp <- as.numeric(Hlevel7_6_5$tot_nonmedexp)
Hlevel7_6_5$tot_exp <- as.numeric(Hlevel7_6_5$tot_exp)
Hlevel7_6_5$transport <- as.numeric(Hlevel7_6_5$transport)
Hlevel7_6_5$hhincome_loss <- as.numeric(Hlevel7_6_5$hhincome_loss)

#Whether any medical advice provided free
Hlevel7_6_5[Hlevel7_6_5$medadv == 1 & !is.na(Hlevel7_6_5$medadv),]$medadv<-"Govt"
Hlevel7_6_5[Hlevel7_6_5$medadv == 2 & !is.na(Hlevel7_6_5$medadv),]$medadv<-"Pvt"
Hlevel7_6_5[Hlevel7_6_5$medadv == 3 & !is.na(Hlevel7_6_5$medadv),]$medadv<-"Both"
Hlevel7_6_5[Hlevel7_6_5$medadv == 4 & !is.na(Hlevel7_6_5$medadv),]$medadv<-"None"
Hlevel7_6_5$medadv<-as.factor(Hlevel7_6_5$medadv)

#type of ward
Hlevel7_6_5[Hlevel7_6_5$ward == 1 & !is.na(Hlevel7_6_5$ward),]$ward<-"F"
Hlevel7_6_5[Hlevel7_6_5$ward == 2& !is.na(Hlevel7_6_5$ward),]$ward<-"G"
Hlevel7_6_5[Hlevel7_6_5$ward == 3 & !is.na(Hlevel7_6_5$ward),]$ward<-"S"
Hlevel7_6_5$ward<-as.factor(Hlevel7_6_5$ward)

#Major source of finance
Hlevel7_6_5[Hlevel7_6_5$fin_src1 == 1 & !is.na(Hlevel7_6_5$fin_src1),]$fin_src1<-"savings"
Hlevel7_6_5[Hlevel7_6_5$fin_src1 == 2 & !is.na(Hlevel7_6_5$fin_src1),]$fin_src1<-"borrowings"
Hlevel7_6_5[Hlevel7_6_5$fin_src1 == 3 & !is.na(Hlevel7_6_5$fin_src1),]$fin_src1<-"sale_pa"
Hlevel7_6_5[Hlevel7_6_5$fin_src1 == 4 & !is.na(Hlevel7_6_5$fin_src1),]$fin_src1<-"contribution_fromff"
Hlevel7_6_5[Hlevel7_6_5$fin_src1 == 9 & !is.na(Hlevel7_6_5$fin_src1),]$fin_src1<-"Others"
Hlevel7_6_5$fin_src1<-as.factor(Hlevel7_6_5$fin_src1)

#sector
Hlevel7_6_5[Hlevel7_6_5$sector.x == 1 & !is.na(Hlevel7_6_5$sector.x),]$sector.x<-"Rural"
Hlevel7_6_5[Hlevel7_6_5$sector.x == 2& !is.na(Hlevel7_6_5$sector.x),]$sector.x<-"Urban"
Hlevel7_6_5$sector.x<-as.factor(Hlevel7_6_5$sector.x)

#region
##generate column for states
Hlevel7_6_5$stateid <- substr(Hlevel7_6_5$region.x, 1,2)
Hlevel7_6_5$stateid <- as.factor(Hlevel7_6_5$stateid )


##structure of converted variables
str(Hlevel7_6_5$govt_inst)
str(Hlevel7_6_5$age_category)
str(Hlevel7_6_5$ailment)
str(Hlevel7_6_5$treatment)
str(Hlevel7_6_5$surgery)
str(Hlevel7_6_5$medicine)
str(Hlevel7_6_5$scans)
str(Hlevel7_6_5$diag_tests)
str(Hlevel7_6_5$duration_stay)
str(Hlevel7_6_5$tot_medicexp)
str(Hlevel7_6_5$tot_nonmedexp)
str(Hlevel7_6_5$tot_exp)
str(Hlevel7_6_5$transport)
str(Hlevel7_6_5$hhincome_loss)
str(Hlevel7_6_5$medadv)
str(Hlevel7_6_5$ward)
str(Hlevel7_6_5$fin_src1)
str(Hlevel7_6_5$sector.x)
str(Hlevel7_6_5$stateid)

##generating cross tabs to understand whether we have observations under every cross-section
xtabs(~ Hlevel7_6_5$govt_inst + Hlevel7_6_5$age_category, data = Hlevel7_6_5)
xtabs(~ Hlevel7_6_5$govt_inst + Hlevel7_6_5$ailment, data = Hlevel7_6_5)
xtabs(~ Hlevel7_6_5$govt_inst + Hlevel7_6_5$treatment, data = Hlevel7_6_5)
xtabs(~ Hlevel7_6_5$govt_inst + Hlevel7_6_5$surgery, data = Hlevel7_6_5)
xtabs(~ Hlevel7_6_5$govt_inst + Hlevel7_6_5$medicine, data = Hlevel7_6_5)
xtabs(~ Hlevel7_6_5$govt_inst + Hlevel7_6_5$scans, data = Hlevel7_6_5)
xtabs(~ Hlevel7_6_5$govt_inst + Hlevel7_6_5$diag_tests, data = Hlevel7_6_5)
xtabs(~ Hlevel7_6_5$govt_inst + Hlevel7_6_5$medadv, data = Hlevel7_6_5)
xtabs(~ Hlevel7_6_5$govt_inst + Hlevel7_6_5$ward, data = Hlevel7_6_5)
xtabs(~ Hlevel7_6_5$govt_inst + Hlevel7_6_5$fin_src1, data = Hlevel7_6_5)
xtabs(~ Hlevel7_6_5$govt_inst + Hlevel7_6_5$sector.x, data = Hlevel7_6_5)
xtabs(~ Hlevel7_6_5$govt_inst + Hlevel7_6_5$stateid, data = Hlevel7_6_5)

#try grouping ailments and states into groups

Hlevel7_6_5$zone <- ifelse(Hlevel7_6_5$stateid == '02' |Hlevel7_6_5$stateid == '03' |Hlevel7_6_5$stateid == '05' |Hlevel7_6_5$stateid == '06' |Hlevel7_6_5$stateid == '09', 1, 
                           ifelse(Hlevel7_6_5$stateid == '10' |Hlevel7_6_5$stateid == '20' |Hlevel7_6_5$stateid == '21' |Hlevel7_6_5$stateid == '19', 2, 
                                  ifelse(Hlevel7_6_5$stateid == '08' |Hlevel7_6_5$stateid == '24' |Hlevel7_6_5$stateid == '30' |Hlevel7_6_5$stateid == '27', 3, 
                                         ifelse(Hlevel7_6_5$stateid == '28' |Hlevel7_6_5$stateid == '29' |Hlevel7_6_5$stateid == '32' |Hlevel7_6_5$stateid == '33' |Hlevel7_6_5$stateid == '36', 4,
                                                ifelse(Hlevel7_6_5$stateid == '23' |Hlevel7_6_5$stateid == '22', 5,
                                                       ifelse(Hlevel7_6_5$stateid == '18' |Hlevel7_6_5$stateid == '11' |Hlevel7_6_5$stateid == '13' |Hlevel7_6_5$stateid == '17' |Hlevel7_6_5$stateid == '14' |
                                                                Hlevel7_6_5$stateid == '15' |Hlevel7_6_5$stateid == '16' |Hlevel7_6_5$stateid == '12', 6, 0))))))

Hlevel7_6_5$zone <- as.factor(Hlevel7_6_5$zone)

Hlevel7_6_5$ailment3 <- ifelse(Hlevel7_6_5$ailment == '01'|Hlevel7_6_5$ailment == '02'|Hlevel7_6_5$ailment == '03'|Hlevel7_6_5$ailment == '04'|
                                 Hlevel7_6_5$ailment == '05'|Hlevel7_6_5$ailment == '06'|Hlevel7_6_5$ailment == '07'|Hlevel7_6_5$ailment == '08'|
                                 Hlevel7_6_5$ailment == '09'|Hlevel7_6_5$ailment == '10'|Hlevel7_6_5$ailment == '11'|Hlevel7_6_5$ailment == '12', 1,
                               ifelse(Hlevel7_6_5$ailment == '13', 2, 
                                      ifelse(Hlevel7_6_5$ailment == '14'|Hlevel7_6_5$ailment == '15', 3, 
                                             ifelse(Hlevel7_6_5$ailment == '16'|Hlevel7_6_5$ailment == '17'|Hlevel7_6_5$ailment == '18'|Hlevel7_6_5$ailment == '19', 4,
                                                    ifelse(Hlevel7_6_5$ailment == '20'|Hlevel7_6_5$ailment == '21'|Hlevel7_6_5$ailment == '22'|Hlevel7_6_5$ailment == '23'|
                                                             Hlevel7_6_5$ailment == '24'|Hlevel7_6_5$ailment == '25'|Hlevel7_6_5$ailment == '26', 5, 
                                                           ifelse(Hlevel7_6_5$ailment == '27'|Hlevel7_6_5$ailment == '28'|Hlevel7_6_5$ailment == '29'|Hlevel7_6_5$ailment == '30'|
                                                                    Hlevel7_6_5$ailment == '31', 6,
                                                                  ifelse(Hlevel7_6_5$ailment == '32'|Hlevel7_6_5$ailment == '33', 7, 
                                                                         ifelse(Hlevel7_6_5$ailment == '34'|Hlevel7_6_5$ailment == '35', 8, 
                                                                                ifelse(Hlevel7_6_5$ailment == '36'|Hlevel7_6_5$ailment == '37'|Hlevel7_6_5$ailment == '38', 9, 
                                                                                       ifelse(Hlevel7_6_5$ailment == '39'|Hlevel7_6_5$ailment == '40'|Hlevel7_6_5$ailment == '41'|Hlevel7_6_5$ailment == '42', 10,
                                                                                              ifelse(Hlevel7_6_5$ailment == '43',11,
                                                                                                     ifelse(Hlevel7_6_5$ailment == '44'|Hlevel7_6_5$ailment == '45', 12, 
                                                                                                            ifelse(Hlevel7_6_5$ailment == '46'|Hlevel7_6_5$ailment == '47'|Hlevel7_6_5$ailment == '48', 13, 
                                                                                                                   ifelse(Hlevel7_6_5$ailment == '49'|Hlevel7_6_5$ailment == '50'|Hlevel7_6_5$ailment == '51', 14,
                                                                                                                          ifelse(Hlevel7_6_5$ailment == '52'|Hlevel7_6_5$ailment == '53'|Hlevel7_6_5$ailment == '54'|Hlevel7_6_5$ailment == '55'|
                                                                                                                                   Hlevel7_6_5$ailment == '56'|Hlevel7_6_5$ailment == '57'|Hlevel7_6_5$ailment == '58', 15,
                                                                                                                                 ifelse(Hlevel7_6_5$ailment == '59'|Hlevel7_6_5$ailment == '60', 16, 0))))))))))))))))
Hlevel7_6_5$ailment3<- as.factor(Hlevel7_6_5$ailment3)

#seeing the distribution of respondents through a chart
sum(Hlevel7_6_5$govt_inst == "0")
sum(Hlevel7_6_5$govt_inst == "1")
data1 <- data.frame(response = c('Government Medical Institution', 'Non-Government Medical Institution'),counts = c(48759,45166))
data1

#graph for medical inst dataframe
library(ggplot2)
plot1 <- ggplot(data1, aes(response, counts)) +
  geom_bar(stat="identity", position = "dodge", colour = "darkblue", fill = c("turquoise2")) 
plot1 + labs(title = "Figure 1: Distribution of Respondents Availing Medical Services in Government Institution") + theme(legend.background = element_rect(fill = "lightblue", size = 0.5, linetype = "solid", colour ="black"))+
  theme(legend.title = element_blank()) +
  ylab("(No. of respondents)")+
  theme(plot.title = element_text(color="black", size=18, face="bold"),
        axis.title.x = element_blank(),
        axis.title.y = element_text(color="black", size=14, face="bold")) +
  theme(axis.text.x = element_text(angle = 0, vjust = 0.5, hjust=0.5, face = "bold", size = 12, color="black")) + 
  theme(plot.title = element_text(hjust=0.5))+
  theme(axis.line.x = element_line(color="black", size = 0.5),
        axis.line.y = element_line(color="black", size = 0.5)) + 
  theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank()) + 
  theme(panel.background = element_rect(fill = "white")) + theme(axis.text.y = element_text(face = "bold", color="black")) + theme(plot.margin = margin(1,1,1.5,1.2, "cm"))

#graph for age category xtab
data2 <- xtabs(~ Hlevel7_6_5$govt_inst + Hlevel7_6_5$age_category, data = Hlevel7_6_5)
data2 <- data.frame(data2)
data2
plot2 <- ggplot(data2, aes(x = Hlevel7_6_5.age_category, y = Freq)) + geom_bar(aes( fill = Hlevel7_6_5.govt_inst), stat = "identity", position = "dodge") 
plot2 + labs(title = "Figure 2: Comparison of Individuals Visting Government Hospitals Across Different Age Categories") +  theme(legend.background = element_rect(fill = "lightblue", size = 0.5, linetype = "solid", colour ="darkblue")) + 
  theme(legend.title = element_blank()) +
  theme(legend.position="bottom") + theme(legend.text = element_text(colour="black", size=10, 
                                                                     face="bold")) + 
  xlab("Age Categories") + ylab("(No. of individuals)") + 
  theme(plot.title = element_text(color="black", size=18, face="bold"),
        axis.title.x = element_text(color="black", size=14, face="bold"),
        axis.title.y = element_text(color="black", size=14, face="bold")) +
  theme(axis.text.x = element_text(angle = 0, vjust = 0.5, face = "bold", size = 10, colour = "black")) + theme(axis.text.y = element_text(face = "bold", colour = "black")) + 
  theme(plot.title = element_text(hjust=0.5))+
  theme(axis.line.x = element_line(color="black", size = 0.5),
        axis.line.y = element_line(color="black", size = 0.5)) + scale_fill_brewer(palette="Set1", labels = c('Non-Government Hospitals', 'Government Hospitals')) + 
  theme(panel.grid.major = element_blank(),
        panel.grid.minor = element_blank()) + theme(panel.background = element_rect(fill = "white")) + scale_x_discrete(labels = c("<20 years", "20-59 years", ">59 years")) + coord_cartesian(ylim = c(0,40000))

#graph for sector wise comparison
data3 <- xtabs(~ Hlevel7_6_5$govt_inst + Hlevel7_6_5$sector.x, data = Hlevel7_6_5)
data3 <- data.frame(data3)
data3
plot3 <- ggplot(data3, aes(x = Hlevel7_6_5.sector.x, y = Freq)) + geom_bar(aes( fill = Hlevel7_6_5.govt_inst), stat = "identity", position = "dodge") 
plot3 + labs(title = "Figure 3: Comparison of Individuals Visting Government Hospitals Across Regions") +  theme(legend.background = element_rect(fill = "lightblue", size = 0.5, linetype = "solid", colour ="darkblue")) + 
  theme(legend.title = element_blank()) +
  theme(legend.position="bottom") + theme(legend.text = element_text(colour="black", size=10, 
                                                                     face="bold")) + 
  xlab("Regions") + ylab("(No. of individuals)") + 
  theme(plot.title = element_text(color="black", size=18, face="bold"),
        axis.title.x = element_text(color="black", size=14, face="bold"),
        axis.title.y = element_text(color="black", size=14, face="bold")) +
  theme(axis.text.x = element_text(angle = 0, vjust = 0.5, face = "bold", size = 10, colour = "black")) + theme(axis.text.y = element_text(face = "bold", colour = "black")) + 
  theme(plot.title = element_text(hjust=0.5))+
  theme(axis.line.x = element_line(color="black", size = 0.5),
        axis.line.y = element_line(color="black", size = 0.5)) + scale_fill_brewer(palette="Set2", labels = c('Non-Government Hospitals', 'Government Hospitals')) + 
  theme(panel.grid.major = element_blank(),
        panel.grid.minor = element_blank()) + theme(panel.background = element_rect(fill = "white")) + scale_x_discrete(labels = c("Rural Areas", "Urban Areas"))+ coord_cartesian(ylim = c(0,40000))


#graph for state wise comparison
data4 <- xtabs(~ Hlevel7_6_5$govt_inst + Hlevel7_6_5$zone, data = Hlevel7_6_5)
data4 <- data.frame(data4)
data4
plot3 <- ggplot(data4, aes(x = Hlevel7_6_5.zone, y = Freq)) + geom_bar(aes( fill = Hlevel7_6_5.govt_inst), stat = "identity", position = "dodge") 
plot3 + labs(title = "Figure 4: Comparison of Individuals Visting Government Hospitals Across Different State Zones") +  theme(legend.background = element_rect(fill = "lightblue", size = 0.5, linetype = "solid", colour ="darkblue")) + 
  theme(legend.title = element_blank()) +
  theme(legend.position="bottom") + theme(legend.text = element_text(colour="black", size=10, 
                                                                     face="bold")) + 
  xlab("Regions") + ylab("(No. of individuals)") + 
  theme(plot.title = element_text(color="black", size=18, face="bold"),
        axis.title.x = element_text(color="black", size=14, face="bold"),
        axis.title.y = element_text(color="black", size=14, face="bold")) +
  theme(axis.text.x = element_text(angle = 0, vjust = 0.5, face = "bold", size = 10, colour = "black")) + theme(axis.text.y = element_text(face = "bold", colour = "black")) + 
  theme(plot.title = element_text(hjust=0.5))+
  theme(axis.line.x = element_line(color="black", size = 0.5),
        axis.line.y = element_line(color="black", size = 0.5)) + scale_fill_brewer(palette="Paired", labels = c('Non-Government Hospitals', 'Government Hospitals')) + 
  theme(panel.grid.major = element_blank(),
        panel.grid.minor = element_blank()) + theme(panel.background = element_rect(fill = "white")) + scale_x_discrete(labels = c("Union\nTerritories", "North", "East", "West", "South", "Central", "North-East"))+ coord_cartesian(ylim = c(0,15000))


#running logistic models
#logistic model 1
library(performance)

lm1 <- glm(Hlevel7_6_5$govt_inst ~ Hlevel7_6_5$age_category + Hlevel7_6_5$ailment3 + Hlevel7_6_5$treatment +
             Hlevel7_6_5$surgery + Hlevel7_6_5$medicine + Hlevel7_6_5$scans + Hlevel7_6_5$diag_tests + Hlevel7_6_5$duration_stay + 
             Hlevel7_6_5$tot_medicexp + Hlevel7_6_5$tot_nonmedexp + Hlevel7_6_5$transport + Hlevel7_6_5$hhincome_loss + 
             Hlevel7_6_5$medadv + Hlevel7_6_5$ward + Hlevel7_6_5$fin_src1 + Hlevel7_6_5$sector.x + Hlevel7_6_5$zone, family = "binomial")

summary(lm1)

check_collinearity(lm1)

pchisq(79778, 55, lower.tail = FALSE)

#logistic model 2--dropping duration_stay, tot_nonmedexp, transport, ward, and hhincome_loss

lm2 <- glm(Hlevel7_6_5$govt_inst ~ Hlevel7_6_5$age_category + Hlevel7_6_5$ailment3 + Hlevel7_6_5$treatment +
             Hlevel7_6_5$surgery + Hlevel7_6_5$medicine + Hlevel7_6_5$scans + Hlevel7_6_5$diag_tests + 
             Hlevel7_6_5$tot_medicexp + Hlevel7_6_5$medadv + Hlevel7_6_5$fin_src1 + Hlevel7_6_5$sector.x + Hlevel7_6_5$zone, family = "binomial")

summary(lm2)

check_collinearity(lm2)

pchisq(97561, 49, lower.tail = FALSE)

#logistic model 3--dropping tot_medicexp


lm3 <- glm(Hlevel7_6_5$govt_inst ~ Hlevel7_6_5$age_category + Hlevel7_6_5$ailment3 + Hlevel7_6_5$treatment +
             Hlevel7_6_5$surgery + Hlevel7_6_5$medicine + Hlevel7_6_5$scans + Hlevel7_6_5$diag_tests + 
             Hlevel7_6_5$medadv + Hlevel7_6_5$fin_src1 + Hlevel7_6_5$sector.x + Hlevel7_6_5$zone, family = "binomial")

summary(lm3)

check_collinearity(lm3)

pchisq(106761, 48, lower.tail = FALSE)


