#' Create and Plot Planck, Wein and Kircjhoff data
#'
#' This functions tranlate math lenguaje to R datasets
#'
#' @param Wavelength Wavelenth
#' @param Temperature Temperature
#' @return Radiance value for a given wavelenth and temperature
#' @export
Plank_Rad <- function(Wavelength,Temperature){

             Wavelength <- Wavelength * 10^-9

             PlanckVal <- (2*pi*h*(cvel^2))/((Wavelength^5)*((exp(1)^((h*cvel)/(Wavelength*k*Temperature)))-1))

             return(PlanckVal)

             }
