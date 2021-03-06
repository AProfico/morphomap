% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/morphomapFlip.R
\name{morphomapFlip}
\alias{morphomapFlip}
\title{morphomapFlip}
\usage{
morphomapFlip(mat, param1 = 0.8, param2 = 10, radius.fact = 1.5,
  npovs = 100)
}
\arguments{
\item{mat}{numeric matrix: coordinates of the bi-dimensional configuration}

\item{param1}{numeric: first parameter for spherical flipping}

\item{param2}{numeric: second parameter for spherical flipping}

\item{radius.fact}{mechanical length of the long bone}

\item{npovs}{number of evenly spaced points to be defined on each section}
}
\value{
mat matrix after spherical flipping
}
\description{
Spherical flipping operator for bi-dimensional configuration
}
\examples{
#create a section
extsec<-morphomapCircle(10,1000)
intsec<-morphomapCircle(8,1000)
#simulate noise 
noiseX<-rnorm(1000,mean = 0,sd = 0.2)
noiseY<-rnorm(1000,mean = 0,sd = 0.2)
noise<-cbind(noiseX,noiseY)
noisect<-intsec+noise
#spherical flipping
flipsect<-morphomapFlip(noisect,param1 = 2,radius.fact = 2)
sortsect<-morphomapSort(flipsect)
#original section
plot(extsec,asp=1,type="l",xlim=c(-15,15),ylim=c(-15,15))
points(intsec,asp=1,type="l",xlim=c(-15,15),ylim=c(-15,15))
#noise
points(noisect,col=2)
#new section after spherical flipping
points(sortsect,type="l",col=3,asp=1,lwd=2)
}
\author{
Antonio Profico, Luca Bondioli, Pasquale Raia, Paul O'Higgins, Damiano Marchi
}
