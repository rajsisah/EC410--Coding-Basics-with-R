# Loading packages
library(readxl)
library(ggplot2)
library(scales)
library(ggthemes)

#####################################################################
#creating plot for total value added

dataplot1 <- read_excel("C:/Users/Rajsi Sah/Desktop/DSE/Coding Assignments/RBI Assignment/Value added.xlsx")
data_plot1 <- as.data.frame(dataplot1)
class(data_plot1)
attach(data_plot1)

vams <-ggplot(data_plot1, aes(y=tva, x=Year, width = 0.5)) +
  geom_bar(stat='identity', fill = "seagreen3") + labs(title= "Figure 1: Total Value Added at Current Prices (in crores) (1980-81 to 2018-19)")
vams + 
  xlab("Year") + ylab("(In Crore Rs)")+
  theme(plot.title = element_text(color="black", size=24, face="bold"),
        axis.title.x = element_text(color="black", size=18, face="bold"),
        axis.title.y = element_text(color="black", size=18, face="bold")) +
  theme(axis.text.x = element_text(angle = 90, vjust = 0.5, hjust=1, face = "bold", size = 14)) + theme(axis.text.y = element_text(size = 14)) +
  theme(plot.title = element_text(hjust=0.5))+
  theme(axis.line.x = element_line(color="black", size = 0.5),
        axis.line.y = element_line(color="black", size = 0.5)) + 
  theme(
    panel.grid.major = element_blank(),
    panel.grid.minor = element_blank()) + 
  theme(panel.background = element_rect(fill = "white")) + theme(axis.text.y = element_text(face = "bold")) + coord_cartesian(ylim = c(0,20000000)) + 
  theme(plot.margin = margin(1,1,1.5,1.2, "cm"))

#create area graph for share of manufacturing in total value added

dataplot2 <- read_excel("C:/Users/Rajsi Sah/Desktop/DSE/Coding Assignments/RBI Assignment/va2.xlsx")
data_plot2 <- as.data.frame(dataplot2)
class(data_plot2)
attach(data_plot2)
vams1 <- ggplot(data_plot2, aes(x = Year, y = value)) + geom_bar(aes( fill = group), stat = "identity", position = "dodge") 
vams1 + labs(title = "Figure 2: Share of Indian Manufacturing Value Added in Total Value Added (in current prices from 1980-81 to 2018-19)") + theme(legend.background = element_rect(fill = "lightblue", size = 0.5, linetype = "solid", colour ="darkblue"))+
  theme(legend.title = element_blank()) + theme(legend.background = element_rect(fill = "lightblue", size = 0.5, linetype = "solid", colour ="darkblue")) +
  theme(legend.position="bottom") + theme(legend.text = element_text(colour="black", size=10, 
                                                                     face="bold")) +
  xlab("Year") + ylab("(In Crore)")+
  theme(plot.title = element_text(color="black", size=18, face="bold"),
        axis.title.x = element_text(color="black", size=14, face="bold"),
        axis.title.y = element_text(color="black", size=14, face="bold")) +
  theme(axis.text.x = element_text(angle = 90, vjust = 0.5, hjust=1, face = "bold", size = 10)) + 
  theme(plot.title = element_text(hjust=0.5))+
  theme(axis.line.x = element_line(color="black", size = 0.5),
        axis.line.y = element_line(color="black", size = 0.5)) + 
  theme(
    panel.grid.major = element_blank(),
    panel.grid.minor = element_blank()) + 
  theme(panel.background = element_rect(fill = "white")) + theme(axis.text.y = element_text(face = "bold")) + coord_cartesian(ylim = c(0,20000000)) +  scale_fill_brewer(palette="Set1")


#states plot
dataplot3 <- read_excel("C:/Users/Rajsi Sah/Downloads/crops sim.xlsx")
data_plot3 <- as.data.frame(dataplot3)
class(data_plot3)
attach(data_plot3)
dataplot3$years <- as.Date(dataplot3$years)
class(data_plot3$years)

vams2 <- ggplot(data_plot3, aes(x = years, y = values, fill = group)) + geom_area(stat = "identity", position = position_stack(reverse = F), colour = "white", size = 0.6, alpha = 0.4) 
vams2 + labs(title = "Figure 3: Leading States Contributing to Manufacturing Value Added") + theme(legend.background = element_rect(fill = "lightblue", size = 0.5, linetype = "solid", colour ="darkblue"))+
  theme(legend.title = element_blank()) + theme(legend.background = element_rect(fill = "lightblue", size = 0.5, linetype = "solid", colour ="darkblue")) +
  theme(legend.position="bottom") + theme(legend.text = element_text(colour="black", size=10, face="bold")) +
  xlab("Year") + ylab("(In Crore)")+
  theme(plot.title = element_text(color="black", size=18, face="bold"),
        axis.title.x = element_text(color="black", size=14, face="bold"),
        axis.title.y = element_text(color="black", size=14, face="bold")) +
  theme(axis.text.x = element_text(angle = 0, vjust = 0.5, hjust=1, face = "bold", size = 10, )) + 
  theme(plot.title = element_text(hjust=0.5))+
  theme(axis.line.x = element_line(color="black", size = 0.5),
        axis.line.y = element_line(color="black", size = 0.5)) + 
  theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank()) + 
  theme(panel.background = element_rect(fill = "white")) + theme(axis.text.y = element_text(face = "bold")) + scale_fill_calc() + theme(plot.margin = margin(1,1,1.5,1.2, "cm"))

#creating plot for value added growth rates
dataplot4 <- read_excel("C:/Users/Rajsi Sah/Desktop/DSE/Coding Assignments/RBI Assignment/gva.xlsx")
data_plot4 <- as.data.frame(dataplot4)
class(data_plot4)
attach(data_plot4)
gvap <- ggplot(data_plot4, aes(Year, group=1)) +
  geom_line(aes(y = gva, color = "Value added growth (log changes)"), size = 1.5) +
  geom_line(aes(y = gmva, color = "Manufacturing value added growth (log changes)"), size = 1.5)
gvap + theme(legend.background = element_rect(fill = "lightblue", size = 0.5, linetype = "solid", colour ="darkblue")) +
  theme(legend.title = element_blank()) + theme(legend.background = element_rect(fill = "lightblue", size = 0.5, linetype = "solid", colour ="darkblue")) +
  theme(legend.position="bottom") + theme(legend.text = element_text(colour="black", size=9, 
                                                                     face="bold")) +
  ggtitle("Figure 4: Comparision of Value Added Growth Rates of the Indian Economy and Manufacturing Sector (1981-82 to 2018-19)") +
  xlab("Year") + ylab("(In %)")+
  theme(plot.title = element_text(color="black", size=16, face="bold", hjust = 0.5),
        axis.title.x = element_text(color="black", size=12, face="bold"),
        axis.title.y = element_text(color="black", size=12, face="bold")) +
  theme(axis.text.x = element_text(angle = 90, vjust = 0.5, hjust=1, size = 9)) + theme(axis.text.y = element_text(size = 9)) +
  theme(plot.title = element_text(hjust=0.5))+
  theme(axis.line.x = element_line(color="black", size = 0.5),
        axis.line.y = element_line(color="black", size = 0.5)) + 
  theme(
    panel.grid.major = element_blank(),
    panel.grid.minor = element_blank()) + 
  theme(
    panel.background = element_rect(fill = "white")) + theme(plot.margin = margin(1,1,1.5,1.2, "cm"))


#create graph for productivity
vams3 <-ggplot(data_plot1, aes(y=lp, x=Year, width = 0.5)) +
  geom_bar(stat='identity', color = "maroon4", fill = "maroon4") + labs(title= "Figure 5: Manufacturing Labour Productivity (Value added per person employed (in Thousands of Rs))")
vams3 + 
  xlab("Year") + ylab("(In Thousands of Rs)")+
  theme(plot.title = element_text(color="black", size=20, face="bold"),
        axis.title.x = element_text(color="black", size=14, face="bold"),
        axis.title.y = element_text(color="black", size=14, face="bold")) +
  theme(axis.text.x = element_text(angle = 90, vjust = 0.5, hjust=1, face = "bold", size = 10)) + 
  theme(plot.title = element_text(hjust=0.5))+
  theme(axis.line.x = element_line(color="black", size = 0.5),
        axis.line.y = element_line(color="black", size = 0.5)) + 
  theme(
    panel.grid.major = element_blank(),
    panel.grid.minor = element_blank()) + 
  theme(panel.background = element_rect(fill = "white")) + theme(axis.text.y = element_text(face = "bold", size = 10)) +   coord_cartesian(ylim = c(0,500))+
  theme(plot.margin = margin(1,1,1.5,1.2, "cm"))

#creating plot for labour productivity growth rates
gvap1 <- ggplot(data_plot4, aes(Year, group=1)) +
  geom_line(aes(y = lpg, color = "Labour Productivity Growth"), size = 0.9) + geom_point(aes(y=lpg,x=Year), color = "purple")
gvap1 + theme(legend.background = element_rect(fill = "lightblue", size = 0.5, linetype = "solid", colour ="darkblue")) +
  theme(legend.title = element_blank()) + theme(legend.background = element_rect(fill = "lightblue", size = 0.5, linetype = "solid", colour ="darkblue")) +
  theme(legend.position="bottom") + theme(legend.text = element_text(colour="black", size=13, 
                                                                     face="bold")) +
  ggtitle("Figure 6: Growth Rate in Manufacturing Labour Productivity (1981-82 to 2018-19)") +
  xlab("Year") + ylab("(In %)")+
  theme(plot.title = element_text(color="black", size=20, face="bold"),
        axis.title.x = element_text(color="black", size=14, face="bold"),
        axis.title.y = element_text(color="black", size=14, face="bold")) +
  theme(axis.text.x = element_text(angle = 90, vjust = 0.5, hjust=1, face = "bold", size = 12)) + 
  theme(plot.title = element_text(hjust=0.5))+
  theme(axis.line.x = element_line(color="black", size = 0.5),
        axis.line.y = element_line(color="black", size = 0.5)) + 
  theme(
    panel.grid.major = element_blank(),
    panel.grid.minor = element_blank()) + 
  theme(panel.background = element_rect(fill = "white"))+ scale_color_manual(values = c('darkblue')) +
  theme(axis.text.y = element_text(face = "bold")) + theme(plot.margin = margin(1,1,1.5,1.2, "cm")) + 
  theme(axis.text.y = element_text(size = 12))

#creating plot for tfp growth rates
gvap3 <- ggplot(data_plot4, aes(Year, group=1)) +
  geom_line(aes(y = tfpg, color = "Total Factor Productivity Growth"), size = 0.9) + geom_point(aes(y=tfpg,x=Year), color = "darkgreen")
gvap3 + theme(legend.background = element_rect(fill = "lightblue", size = 0.5, linetype = "solid", colour ="darkblue")) +
  theme(legend.title = element_blank()) + theme(legend.background = element_rect(fill = "lightblue", size = 0.5, linetype = "solid", colour ="darkblue")) +
  theme(legend.position="bottom") + theme(legend.text = element_text(colour="black", size=13, 
                                                                     face="bold")) +
  ggtitle("Figure 7: Growth Rate in Total Factor Productivity (1981-82 to 2018-19)") +
  xlab("Year") + ylab("(In %)")+
  theme(plot.title = element_text(color="black", size=20, face="bold"),
        axis.title.x = element_text(color="black", size=14, face="bold"),
        axis.title.y = element_text(color="black", size=14, face="bold")) +
  theme(axis.text.x = element_text(angle = 90, vjust = 0.5, hjust=1, face = "bold", size = 12)) + 
  theme(plot.title = element_text(hjust=0.5))+
  theme(axis.line.x = element_line(color="black", size = 0.5),
        axis.line.y = element_line(color="black", size = 0.5)) + 
  theme(
    panel.grid.major = element_blank(),
    panel.grid.minor = element_blank()) + 
  theme(panel.background = element_rect(fill = "white"))+ scale_color_manual(values = c('darkgreen')) +
  theme(axis.text.y = element_text(face = "bold")) + theme(plot.margin = margin(1,1,1.5,1.2, "cm")) + 
  theme(axis.text.y = element_text(size = 12))

#create chart for wage and productivity 
dataplot5 <- read_excel("C:/Users/Rajsi Sah/Desktop/DSE/Coding Assignments/RBI Assignment/wageprod.xlsx")
data_plot5 <- as.data.frame(dataplot5)
class(data_plot5)
attach(data_plot5)

gvap4 <- ggplot(data_plot5, aes(Year, group=1)) +
  geom_line(aes(y = loglp, color = "Labour Productivity (log)"), size = 1.5) +
  geom_line(aes(y = logwg, color = "Wage to Workers (log)"), size = 1.5) 
gvap4 + theme(legend.background = element_rect(fill = "lightblue", size = 0.5, linetype = "solid", colour ="darkblue")) +
  theme(legend.title = element_blank()) + theme(legend.background = element_rect(fill = "lightblue", size = 0.5, linetype = "solid", colour ="darkblue")) +
  theme(legend.position="bottom") + theme(legend.text = element_text(colour="black", size=9, 
                                                                     face="bold")) +
  ggtitle("Figure 8: Trend in Wage and Productivity (1991-92 to 2018-19)") +
  xlab("Year") +  theme(plot.title = element_text(color="black", size=16, face="bold", hjust = 0.5),
                        axis.title.x = element_text(color="black", size=12, face="bold"),
                        axis.title.y = element_blank()) +
  theme(axis.text.x = element_text(angle = 90, vjust = 0.5, hjust=1, size = 12, face = "bold")) + theme(axis.text.y = element_text(size = 12, face = "bold")) +
  theme(plot.title = element_text(hjust=0.5))+
  theme(axis.line.x = element_line(color="black", size = 0.5),
        axis.line.y = element_line(color="black", size = 0.5)) + 
  theme(
    panel.grid.major = element_blank(),
    panel.grid.minor = element_blank()) + 
  theme(
    panel.background = element_rect(fill = "white")) + theme(plot.margin = margin(1,1,1.5,1.2, "cm")) +
  scale_color_brewer(palette="Paired")

# create employment chart
vams4 <-ggplot(data_plot1, aes(y=em, x=Year, width = 0.5)) +
  geom_bar(stat='identity', fill = "purple3") + labs(title= "Figure 9: Employment in the Manufacturing Sector (1980-81 to 2018-19)")
vams4 + 
  xlab("Year") + ylab("(In Thousands)")+
  theme(plot.title = element_text(color="black", size=24, face="bold"),
        axis.title.x = element_text(color="black", size=16, face="bold"),
        axis.title.y = element_text(color="black", size=16, face="bold")) +
  theme(axis.text.x = element_text(angle = 90, vjust = 0.5, hjust=1, face = "bold", size = 12)) + 
  theme(plot.title = element_text(hjust=0.5))+
  theme(axis.line.x = element_line(color="black", size = 0.5),
        axis.line.y = element_line(color="black", size = 0.5)) + 
  theme(
    panel.grid.major = element_blank(),
    panel.grid.minor = element_blank()) + 
  theme(panel.background = element_rect(fill = "white")) + theme(axis.text.y = element_text(face = "bold", size = 12)) +   coord_cartesian(ylim = c(0,60000))+
  theme(plot.margin = margin(1,1,1.5,1.2, "cm"))

#create employment growth plot
gvap5 <- ggplot(data_plot4, aes(Year, group=1)) +
  geom_line(aes(y = emg, color = "Employment (log changes growth)"),size=1.5) + geom_point(aes(y=emg,x=Year), color = "red1", size = 2) 
gvap5 + theme(legend.background = element_rect(fill = "lightblue", size = 0.5, linetype = "solid", colour ="darkblue")) +
  theme(legend.title = element_blank()) + theme(legend.background = element_rect(fill = "lightblue", size = 0.5, linetype = "solid", colour ="darkblue")) +
  theme(legend.position="bottom") + theme(legend.text = element_text(colour="black", size=13, 
                                                                     face="bold")) +
  ggtitle("Figure 10: Employment Growth Rate in the Manufacturing Sector (1981-82 to 2018-19)") +
  xlab("Year") + ylab("(In %)")+
  theme(plot.title = element_text(color="black", size=20, face="bold"),
        axis.title.x = element_text(color="black", size=14, face="bold"),
        axis.title.y = element_text(color="black", size=14, face="bold")) +
  theme(axis.text.x = element_text(angle = 90, vjust = 0.5, hjust=1, face = "bold", size=12)) + 
  theme(plot.title = element_text(hjust=0.5))+
  theme(axis.line.x = element_line(color="black", size = 0.5),
        axis.line.y = element_line(color="black", size = 0.5)) + 
  theme(
    panel.grid.major = element_blank(),
    panel.grid.minor = element_blank()) + 
  theme(panel.background = element_rect(fill = "white"))+ scale_color_manual(values = c('darkred')) +
  theme(axis.text.y = element_text(face = "bold")) + theme(plot.margin = margin(1,1,1.5,1.2, "cm")) + 
  theme(axis.text.y = element_text(size = 12))

#create wages vs productivity
gvap6 <- ggplot(data_plot5, aes(x=wg,y=lp)) +
  geom_point(size = 4, shape = 24, colour = "violet", fill = "purple") +
  geom_smooth(method=lm, linetype="dashed",
              color="violetred", fill="salmon")
gvap6 + theme(legend.background = element_rect(fill = "lightblue", size = 0.5, linetype = "darkblue", colour ="indianred2")) +
  ggtitle("Figure 11: Wages to Workers and Manufacturing Labour Productivity (1990-91 to 2018-19)") +
  xlab("Wages to workers (in Rs crores)") + ylab("Value added per person employed (in Thousands of Rs)")+
  theme(plot.title = element_text(color="black", size=16, face="bold", hjust = 0.5),
        axis.title.x = element_text(color="black", size=12, face="bold"),
        axis.title.y = element_text(color="black", size=12, face="bold")) +
  theme(axis.text.x = element_text(angle = 90, vjust = 0.5, hjust=1, size = 9, face = "bold")) + theme(axis.text.y = element_text(size = 9, face = "bold")) +
  theme(plot.title = element_text(hjust=0.5))+
  theme(axis.line.x = element_line(color="black", size = 0.5),
        axis.line.y = element_line(color="black", size = 0.5)) + 
  theme(
    panel.grid.major = element_blank(),
    panel.grid.minor = element_blank()) + 
  theme(
    panel.background = element_rect(fill = "white")) + theme(plot.margin = margin(1,1,1.5,1.2, "cm"))

