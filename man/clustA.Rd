\name{clustA}
\alias{clustA}
\title{Joining Clustering methods}
\usage{
clustA(data,kmeanclust,fit)}
\description{
this function prints the plot of a kmeans clustering as well as the Ward Hierarchical Clustering along with the optimal number of clusters proposed by kmeans
}
\arguments{
\item{data}{The dataset to which you will apply the clustering process, no missing values allowed. }

\item{kmeanclust}{An object obtained after using kmeans and defining a prior number of clusters}

\item{fit}{It's an hclust object that generates a Cluster Dendrogram. }
}
\examples{
require(cluster)
require(factoextra)
data=USArrests
kmeanclust= kmeans(df, 4)
d <- dist(df, method = "euclidean")
fit <- hclust(d, method="ward.D")
clustA(data,kmeanclust,fit)
}
\author{
Anwaar Msehli
}
