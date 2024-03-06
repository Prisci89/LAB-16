library(EconGeo)
#cargar data
EL=read.csv("http://raw.githubusercontent.com/PABalland/ON/master/lesmis-el.csv")
#ver encabezado
head(EL)
#transformar a matriz
MM<-get_matrix(EL)
#EL=edge list
EL
#tweeter es un red dirijida (yo sigo a shakira pero ella no me sigue a mi, FB es una red no dirijida porque es bidimensional)
#este ejemplo es de una red no dirijida, las aristas estan conectadas con una flecha bidireccional 
library(igraph)

g<-graph_from_data_frame(d=EL, directed = F)
g
plot (g)

EL$Weight=NULL
head(EL)
install.packages("networkD3")

library(networkD3)
library("networkd3")

#ver matriz simetrica (red no dirigida-red bidirecional)
simpleNetwork(EL)

#Diferencias entre res dirigida y no dirigida