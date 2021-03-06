% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/mbg-cnbd-k.R
\name{mbgcnbd.PlotTrackingCum}
\alias{mbgcnbd.PlotTrackingCum}
\alias{bgcnbd.PlotTrackingCum}
\title{(M)BG/CNBD-k Tracking Cumulative Transactions Plot}
\usage{
mbgcnbd.PlotTrackingCum(params, T.cal, T.tot, actual.cu.tracking.data,
  xlab = "Week", ylab = "Cumulative Transactions", xticklab = NULL,
  title = "Tracking Cumulative Transactions", ymax = NULL)

bgcnbd.PlotTrackingCum(params, T.cal, T.tot, actual.cu.tracking.data,
  xlab = "Week", ylab = "Cumulative Transactions", xticklab = NULL,
  title = "Tracking Cumulative Transactions", ymax = NULL)
}
\arguments{
\item{params}{A vector with model parameters \code{k}, \code{r},
\code{alpha}, \code{a} and \code{b}, in that order.}

\item{T.cal}{A vector to represent customers' calibration period lengths.}

\item{T.tot}{End of holdout period. Must be a single value, not a vector.}

\item{actual.cu.tracking.data}{A vector containing the cumulative number of
repeat transactions made by customers for each period in the total time
period (both calibration and holdout periods).}

\item{xlab}{Descriptive label for the x axis.}

\item{ylab}{Descriptive label for the y axis.}

\item{xticklab}{A vector containing a label for each tick mark on the x axis.}

\item{title}{Title placed on the top-center of the plot.}

\item{ymax}{Upper boundary for y axis.}
}
\value{
Matrix containing actual and expected cumulative repeat transactions.
}
\description{
Plots the actual and expected cumulative total repeat transactions by all
customers for the calibration and holdout periods, and returns this
comparison in a matrix.
}
\details{
Note: Computational time increases with the number of unique values of
\code{T.cal}.
}
\examples{
\dontrun{
data("groceryElog")
groceryElog <- groceryElog[groceryElog$date < "2006-06-30", ]
cbs <- elog2cbs(groceryElog, T.cal = "2006-04-30")
cum <- elog2cum(groceryElog)
params <- mbgcnbd.EstimateParameters(cbs, k = 2)
mbgcnbd.PlotTrackingCum(params, cbs$T.cal,
  T.tot = max(cbs$T.cal + cbs$T.star), cum)
}
}
\seealso{
\code{\link{mbgcnbd.ExpectedCumulativeTransactions}}
}
