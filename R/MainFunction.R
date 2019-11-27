#' Create and Plot Planck, Wein and Kircjhoff data
#'
#' This functions creates dataframe with radiance data
#'
#' @param Tmin Min. Temperature
#' @param Tmax Max. Temperature
#' @param Tinterv Interval Temperature
#' @param Wmin Min. Wavelength
#' @param Wmax Max. Wavelength
#' @param Winterv Interval Wavelength
#' @return Nothing, just create dataframes
#' @export
DefinePlanckData <- function(Tmin=1000,Tmax=10000,Tinterv=1000,Wmin=0.01,Wmax=3000,Winterv=1){
                            Define_Variables()
                            PlankData_F <- data.frame()

                            for(Kk in seq(from=Tmin, to=Tmax, by=Tinterv)){
                                          data <- data.frame("Wavelength" = Xval_nm,
                                                             "Radiance" = Plank_Rad(Xval_nm,Kk),
                                                             "Temperature" = Kk,
                                                             "Lam_Mx"=(Wein_C/Kk),
                                                             "RMax" = Plank_Rad((Wein_C/Kk),Kk))
                                          Planck_Tmp <- assign(paste("Planck",Kk,sep="_Kk"),data)
                                          PlankData_F <- rbind(PlankData_F, Planck_Tmp)
                            }
                            PlankData_F <<- PlankData_F
                            rm(list=ls())
}



