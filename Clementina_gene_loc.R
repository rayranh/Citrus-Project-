
#creating the entire map of Scaffolds 1:9 

chromosomes <- c("SC1", "SC2","SC3","SC4","SC5","SC6","SC7","SC8","SC9") 
size <- c(28.9, 36.3, 51.0, 25.6, 43.3, 25.6, 21.1, 25.1, 31.4)  


#creating a dataframe for ggplot (x,y)
df <- data.frame(chromosomes,size)

library(ggplot2)  
library(ggrepel) 
library(readxl)

###reading excel file to create df### 

data <- read_excel("/Users/rayanhg/Desktop/citrusproj/scaffold_positions .xlsx") 

#turning data into data.frame 
scaffold_info <- as.data.frame(data)  


#subsetting for X 
x<- scaffold_info[,c(1)] 

#subsetting for Y 
scaffold_pos <- scaffold_info[,c(2)]  

#subsetting for ID's 
scaffold_ID <- scaffold_info[,c(3)]   

#subsetting for x and y dataframe 
data <- scaffold_info[,c(1,2)] 

#subsetting for x,y and ID dataframe in order to use for geom_text 
all_scaffold <- data.frame(x,scaffold_pos,scaffold_ID) 



print(plot <- ggplot(data=df, 
                     aes(x=chromosomes, y=size)) + geom_bar(stat="identity", width=0.1) + 
        scale_x_discrete(position = "top") + theme(axis.ticks.x = element_blank(),plot.title = element_text(hjust = 0.5), panel.grid.major = element_blank(),panel.grid.minor = element_blank(),panel.background = element_blank(),axis.ticks.y =element_blank())+ 
        ggtitle("Clementina") + scale_y_reverse((0:55) , name= "Mb", breaks = c(0,10,20,30,40,50,60))) + expand_limits(y=c(0,51)) + geom_point(data = data, aes(x=x,y= scaffold_pos), shape ="_", size = 10.5) + 
        geom_text_repel(data = all_scaffold, aes(x=x,y=scaffold_pos,label=scaffold_ID), hjust = -1, size = 5, direction= "y",seed = 1) 


  



