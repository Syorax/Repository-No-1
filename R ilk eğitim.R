library(datasets)
data("mtcars")
head(mtcars,5)
?mtcars
install.packages("ggplot2")
library(ggplot2)
ggplot(aes(x=disp,y=mpg,),data=mtcars)+geom_point()

#add a title and put it in middle
ggplot(aes(x=disp,y=mpg,),data=mtcars)+geom_point()+ggtitle("Displacement vs Miles per Gallon") + theme(plot.title = element_text(hjust= 0.5))

#Change the name of the x-axis and y-axis
ggplot(aes(x=disp,y=mpg,),data=mtcars)+geom_point()+ggtitle("Displacement vs Miles per Gallon") + labs(x = "Displacement", y = "Miles per Gallon") + theme(plot.title = element_text(hjust= 0.5))

#make vs a factor
mtcars$vs <- as.factor(mtcars$vs)
#create boxplot of the distribution for v-shaped and straight Engine
ggplot(aes(x=vs, y=mpg), data=mtcars) + geom_boxplot()
#adding color to boxplots 
ggplot(aes(x=vs, y=mpg, fill = vs), data = mtcars) + geom_boxplot(alpha=0.3) + theme(legend.position="none") 

#histogram of weight wt
ggplot(aes(x=wt),data=mtcars) + geom_histogram(binwidth =0.5)
