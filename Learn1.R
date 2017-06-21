yeast<-read.table("/Users/jon/stat465F14/class/cDNAdata/yeastCellCycle/yeastCellCycle_subset.csv",sep=",",header=TRUE,fill=TRUE)
// In windows -- D:\R\R_PROJECT\R-Courses\Courses\Stats_for_Bioinformatics\ClassData
// setwd('c:/documents/')

yeast<-read.table("D:\\R\\R_PROJECT\\R-Courses\\Courses\\Stats_for_Bioinformatics\\ClassData\\yeastCellCycle_subset.csv",sep=",",header=TRUE,fill=TRUE)
indi<-apply(yeast[,2:19],1,sum)
yeast<-yeast[is.na(indi)==F,]
yeast1=yeast[,2:19]
row.names(yeast1)=yeast[,1]
dd <- as.dist((1 - cor(t(yeast1)))/2)
hc=hclust(dd)
plot(hc) # to see a dendrogram of clustered variables

## cut tree
memb <- cutree(hc, k = 10)
cluster1=yeast1[memb==2,]
heatmap(as.matrix(cluster1))


Questions:
1. What information are loaded in yeastCellCycle file?
2. How apply statement is working?
3. How slices are working?
4. How hclust plot is working?
5. How heatmap is working?
