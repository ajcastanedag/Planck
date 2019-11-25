#' Create and Plot Planck, Wein and Kircjhoff data
#'
#' This functions tranlate math lenguaje to R datasets
#'
#' @param Tmin Min. Temperature
#' @param Tmax Max. Temperature
#' @param Tinterv Interval Temperature
#'
#' @return PlanckVal
#' @return Nothing, just create dataframes
#'
#' @export
Plank <- function(Wavelength,Temperature){
  Wavelength <- Wavelength * 10^-9
  PlanckVal <- (2*pi*h*(cvel^2))/((Wavelength^5)*((exp(1)^((h*cvel)/(Wavelength*k*Temperature)))-1))
  return(PlanckVal)
}
DefinePlanckData <- function(Tmin=1000,Tmax=10000,Tinterv=1000,Wmin=0.01,Wmax=3000,Winterv=1){
  # -> Speed of Light
  cvel <<- 2.99792460e8
  # -> Boltzman Constant
  k <<- 1.3806e-23
  # -> Planck´s Constant
  h <<- 6.626e-34
  # -> Wavelength in nanometers
  Xval_nm <<- seq(Wmin,Wmax,Winterv)
  # -> Wein's Constant
  Wein_C <<- 2897000
  # -> Wein's Constant
  Wein_C <<- 2897000
  #
  PlankData_F <- data.frame()
  #
  for(Kk in seq(from=Tmin, to=Tmax, by=Tinterv)){
    data <- data.frame("Wavelength" = Xval_nm,
                       "Radiance" = Plank(Xval_nm,Kk),
                       "Temperature" = Kk,
                       "Lam_Mx"=(Wein_C/Kk),
                       "RMax" = Plank((Wein_C/Kk),Kk))
    Planck_Tmp <- assign(paste("Planck",Kk,sep="_Kk"),data)
    PlankData_F <- rbind(PlankData_F, Planck_Tmp)
  }
  PlankData_F <<- PlankData_F
  rm(list=ls())
  ls()
  #rm(list="cvel","h","k","Wein_C","Xval_nm" )
}


