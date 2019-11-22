#' Create and Plot Planck, Wein and Kircjhoff data
#'
#' This functions tranlate math lenguaje to R datasets
#'
#' @param Tmin Min. Temperature
#' @param Tmax Max. Temperature
#' @param Tinterv Interval Temperature
#'
#' @return Nothing, just create dataframes
#'
#' @export
#######################################################
Variables_Planck <- function(){
  # -> Speed of Light
  cvel <- 2.99792460e8
  # -> Boltzman Constant
  k <- 1.3806e-23
  # -> Planck´s Constant
  h <- 6.626e-34
  # -> Wavelength in nanometers 0 to 3000
  Xval_nm <- seq(0.01,3000,1)
  # -> Wein's Constant
  Wein_C <- 2897000
  # -> Temperature weins curve 1000 to 10000
  Temp_wien <- seq(1000,10000,1)
  # -> Wein's Constant
  Wein_C <- 2897000
  # -> Wein data
  Temp_wien <- seq(1000,10000,1)
}
#######################################################
Plank <- function(Wavelength,Temperature){
  Variables_Planck()
  Wavelength <- Wavelength * 10^-9
  PlanckVal <- (2*pi*h*(cvel^2))/((Wavelength^5)*((exp(1)^((h*cvel)/(Wavelength*k*Temperature)))-1))
  return(PlanckVal)
}
#######################################################
DefinePlanckData <- function(Tmin,Tmax,Tinterv){
  PlankData_F <- data.frame()
  for(Kk in seq(from=Tmin, to=Tmax, by=Tinterv)) {
    data <- data.frame("Wavelength" = Xval_nm,"Radiance" = Plank(Xval_nm,Kk),"Temperature" = Kk,"Lam_Mx"=(Wein_C/Kk),"RMax" = Plank((Wein_C/Kk),Kk))
    Planck_Tmp <- assign(paste("Planck",Kk,sep="_Kk"),data)
    PlankData_F <- rbind(PlankData_F, Planck_Tmp)
  }
  PlankData_F <<- PlankData_F
}
#######################################################
