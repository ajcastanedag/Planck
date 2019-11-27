#' Create and Plot Planck, Wein and Kircjhoff data
#'
#' This functions creates the constant values
#'
#' @param WminC Min. Wavelenth
#' @param WmaxC Max. Wavelenth
#' @param WintervC Interval Wavelenth
#' @return Nothing, create the constant values and the wavelength vector
#' @export


Define_Variables <- function(WminC = 0.1, WmaxC = 3000, WintervC=1){

                                # -> Speed of Light
                                cvel <<- 2.99792460e8

                                # -> Boltzman Constant
                                k <<- 1.3806e-23

                                # -> Planck´s Constant
                                h <<- 6.626e-34

                                # -> Wavelength in nanometers
                                Xval_nm <<- seq(WminC,WmaxC,WintervC)

                                # -> Wein's Constant
                                Wein_C <<- 2897000
                    }

