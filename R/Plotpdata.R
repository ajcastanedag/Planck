#' Say hello to the EAGLE
#'
#' This function says hello to new EAGLES
#'
#' @param PlankData_F dataframe with planck data
#'
#' @return Nothing, just say Hello
#'
#'@importFrom ggplot2 ggplot
#'@importFrom ggdark dark_theme_gray
#'
#' @export
#'

Planck_Plot <- function(PlankData_F){
    ggplot(PlankData_F, aes(Wavelength, Radiance, color = Temperature)) +
    geom_point(size = 0.5)+
    #geom_line(data =WienData, aes(Wavelength, Radiance_Max), color = "white") +
    scale_color_gradientn(colours = rainbow(9))+
    dark_theme_gray()+
    ggtitle("Planck´s Spectrum of Radiation") +
    theme(plot.title = element_text(hjust = 0.5))+
    xlab(expression(paste("Wavelength (",  lambda,") in nm")))+
    ylab("Spectral Radiance Exitance") +
    ylim(0,1.5e15) +
    geom_point(aes(Lam_Mx, RMax), color = "white") +
    theme(legend.position = c(0.9, 0.8),
          legend.background = element_rect(fill="black",
          size=0.5, linetype="solid"))
}



