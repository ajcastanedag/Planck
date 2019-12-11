#' Say hello to the EAGLE
#'
#' This function says hello to new EAGLES
#'
#' @param PlankData_F dataframe with planck data
#'
#'@return Graph of dataframe!
#'
#'@importFrom ggplot2 ggplot
#'@importFrom ggdark dark_theme_gray
#'@importFrom scales
#'
#' @export
#'
PlotPlanckData <- function(PlankData_F){
    Planck_Graph <- ggplot(PlankData_F, aes(Wavelength, Radiance, color = Temperature), width = 900, height = 600) +
                    labs(color = "Temperature in K \n") +
                    geom_point(size = 0.5)+
                    #geom_line(data =WienData, aes(Wavelength, Radiance_Max), color = "white") +
                    scale_color_gradientn(colours = Star_Col, breaks=seq(min(PlankData_F$Temperature),max(PlankData_F$Temperature),2000)) +
                    dark_theme_gray()+
                    ggtitle("Planck´s Spectrum of Radiation") +
                    theme(plot.title = element_text(hjust = 0.5))+
                    xlab(expression(paste("Wavelength (",  lambda,") in nm")))+
                    ylab("Spectral Radiance Exitance") +
                    ylim(0,4.3e16) +
                    geom_point(aes(Lam_Mx, RMax), color = "white") +
                    theme(legend.position = c(0.9, 0.6),
                          legend.background = element_rect(fill="black",
                                              size=0.5,
                                              linetype="solid"),
                          legend.title.align = 0.6,
                          legend.key.height = unit(3,"line"))

    Planck_Graph <<- Planck_Graph
    return(Planck_Graph)
}
