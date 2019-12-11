#' Say hello to the EAGLE
#'
#' This function says hello to new EAGLES
#'
#'@param Planck_Graph dataframe with planck data
#'@param Time Fade time
#'
#'@return Gif
#'
#'@importFrom ggplot2 ggplot
#'@importFrom gganimate transition_time
#'@importFrom gganimate shadow_wake
#'@importFrom gganimate enter_fade
#'@importFrom gganimate exit_fade
#'@importFrom ggdark dark_theme_gray
#'
#' @export
#'

GifPlanckData <- function(Planck_Graph, Time = 0.01){
  Planck_Gif <<- Planck_Graph + transition_time(Temperature) +
                ggtitle("Planck´s Spectrum of Radiation") +
                shadow_wake(wake_length = Time, alpha = TRUE)+
                dark_theme_gray() +
                enter_fade() +
                exit_fade() +
                labs(color = "Temperature in K \n") +
                geom_point(size = 0.5)+
                dark_theme_gray()+
                ggtitle("Planck´s Spectrum of Radiation") +
                theme(plot.title = element_text(hjust = 0.5))+
                xlab(expression(paste("Wavelength (",  lambda,") in nm")))+
                ylab("Spectral Radiance Exitance") +
                geom_point(aes(Lam_Mx, RMax), color = "white") +
                theme(legend.position = c(0.5, 0.6),
                legend.background = element_rect(fill="black",
                                    size=0.5,
                                    linetype="solid"),
                legend.title.align = 0.5,
                legend.key.height = unit(5,"line")) +
                view_follow() +
                shadow_mark(past = T, future=F, alpha=0.5)


  return(animate(Planck_Gif, width = 900, height = 600))
}


