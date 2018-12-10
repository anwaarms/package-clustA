#' Plot convex hull when performing PCA
#'
#' @export clustA
#'
#' @return clustering plots
#'
#' @author  Anwaar Msehli
#' @description this function prints the plot of a kmeans clustering as well as the Ward Hierarchical Clustering along with the optimal number of clusters proposed by kmeans
#' @import cluster
#' @import factoextra
#' @param  data
#'   The dataset to which you will apply the clustering process, no missing values allowed.
#' @param  kmeanclust
#'   An object obtained after using kmeans and defining a prior number of clusters
#' @param  fit
#'   It's an hclust object that generates a Cluster Dendrogram.

#' @examples
#' library(cluster)
#'library(factoextra)
#'data <- USArrests
#'data <- na.omit(data)



#'kmeanclust= kmeans(data, 4)
#'fviz_cluster(kmeanclust, data = data)


#'fviz_nbclust(data, kmeans, method = "silhouette")

#'d <- dist(data, method = "euclidean") # distance matrix
#'fit <- hclust(d, method="ward.D")

clustA <- function(data,kmeanclust,fit) {

  plot(fviz_cluster(kmeanclust, data))
  plot(fit)
  fviz_nbclust(data, kmeans, method = "silhouette")

}


