% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/3_buildMST.R
\name{PlotCenters}
\alias{PlotCenters}
\title{Plot cluster centers on a 2D plot}
\usage{
PlotCenters(fsom, marker1, marker2, MST = TRUE)
}
\arguments{
\item{fsom}{FlowSOM object, as generated by \code{\link{BuildMST}}}

\item{marker1}{Marker to show on the x-axis}

\item{marker2}{Marker to show on the y-axis}

\item{MST}{Type of visualization, if 1 plot tree, else plot grid}
}
\value{
Nothing is returned. A 2D scatter plot is drawn on which the nodes 
        of the grid are indicated
}
\description{
Plot FlowSOM nodes on a 2D scatter plot of the data
}
\examples{
   # Read from file, build self-organizing map and minimal spanning tree
   fileName <- system.file("extdata","lymphocytes.fcs",package="FlowSOM")
   flowSOM.res <- ReadInput(fileName, compensate=TRUE,transform=TRUE,
                            scale=TRUE)
   flowSOM.res <- BuildSOM(flowSOM.res,colsToUse=c(9,12,14:18))
   flowSOM.res <- BuildMST(flowSOM.res)
   
   # Plot centers
   PlotCenters(flowSOM.res,"FSC-A","SSC-A")
   PlotCenters(flowSOM.res,2,5)

}
\seealso{
\code{\link{PlotStars}},\code{\link{PlotPies}},
         \code{\link{PlotMarker}},\code{\link{BuildMST}}
}

