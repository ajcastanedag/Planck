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
DefinePlanckData <- function(Tmin=2000,Tmax=20000,Tinterv=1000,Wmin=0.01,Wmax=3000,Winterv=1){
                            #Call for the variables definition like speed of light and other constants
                            Define_Variables()
                            #Create empty dataframe to store all the inforation
                            PlankData_F <- data.frame()
                            #For loop to create the data
                            for(Kk in seq(from=Tmin, to=Tmax, by=Tinterv)){
                                          #Create temporal dataframe with single temperature (KK) dataframe using Planck law
                                          data <- data.frame("Wavelength" = Xval_nm,
                                                             "Radiance" = Plank_Rad(Xval_nm,Kk),
                                                             "Temperature" = Kk,
                                                             "Lam_Mx"=(Wein_C/Kk),
                                                             "RMax" = Plank_Rad((Wein_C/Kk),Kk))
                                          #Assign temporal dataframe to a new dataframe
                                          Planck_Tmp <- assign(paste("Planck",Kk,sep="_Kk"),data)
                                          #Rebind just created data into the global dataframe taht will be exported
                                          PlankData_F <- rbind(PlankData_F, Planck_Tmp)
                            }
                            #Export rbinded data into a global variable called PlankData_F
                            PlankData_F <<- PlankData_F
                            #Remove temporal data created that will not be used any more
                            rm(list=ls())
                      }



