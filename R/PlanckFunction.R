#' Create and Plot Planck, Wein and Kircjhoff data
#'
#' This functions tranlate math lenguaje to R datasets
#'
#' @param Wavelength Min. Temperature
#' @param Temperature Max. Temperature
#'
#' @return PlanckVal
#'
#' @export
Plank <- function(Wavelength,Temperature){
  Wavelength <- Wavelength * 10^-9
  PlanckVal <- (2*pi*h*(cvel^2))/((Wavelength^5)*((exp(1)^((h*cvel)/(Wavelength*k*Temperature)))-1))
  return(PlanckVal)
}
