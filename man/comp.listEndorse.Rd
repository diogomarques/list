\name{comp.listEndorse} 
\alias{comp.listEndorse} 
\title{Comparing List and Endorsement Experiment Data} 
\description{ 
Function to conduct a statistical test with the null hypothesis that there is no difference between the correlation coefficients between list experiment and endorsement experiment data.
} 
\usage{
comp.listEndorse(y.endorse, y.list, treat, n.draws = 10000, 
         alpha = .05, endorse.mean = FALSE,
         method = "pearson")
} 

\arguments{ 
\item{y.endorse}{A numerical matrix containing the response data for the endorsement experiment.} 
\item{y.list}{A numerical vector containing the response data for a list experiment.} 
\item{treat}{A numerical vector containing the binary treatment status for the experiments. The treatment assignment must be the same for both experiments to compare across experiments.}
\item{n.draws}{Number of Monte Carlo draws.}
\item{alpha}{Confidence level for the statistical test.}
\item{endorse.mean}{A logical value indicating whether the mean endorsement experiment response is taken across questions.}
\item{method}{The method for calculating the correlation, either Pearson's rho or Kendall's tau.}
}

\details{This function allows the user to calculate the correlation between list and endorsement experiment data within the control group and the treatment group, and to conduct a statistical test with the null hypothesis of no difference between the two correlation coefficients.
 }

\value{\code{comp.listEndorse} returns a list with four elements: the correlation statistic (rho or tau) for the treatment group as \code{cor.treat}, the correlation statistic for the control group as \code{cor.control}, the p.value for the statistical test comparing the two correlation statistics as \code{p.value}, and the bootstrapped confidence interval of the difference as \code{ci}.}

\references{
Blair, Graeme, Jason Lyall and Kosuke Imai. (2014) ``Comparing and Combining
  List and Experiments: Evidence from Afghanistan." 
  American Journal of Political Science. available at 
  \url{http://imai.princeton.edu/research/comp.html}
}

\author{Graeme Blair, Princeton University,
\email{gblair@princeton.edu} and Kosuke Imai, Princeton University,
\email{kimai@princeton.edu} 
}
 
\keyword{models}
\keyword{regression}