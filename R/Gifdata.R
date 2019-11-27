#' Say hello to the EAGLE
#'
#' This function says hello to new EAGLES
#'
#'@param Planck_Graph dataframe with planck data
#'@param Time Fade time
#'
#'@return Nothing, just say Hello
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
  Planck_Gif <- Planck_Graph + transition_time(Temperature) +
                ggtitle("Planck´s Spectrum of Radiation") +
                shadow_wake(wake_length = Time, alpha = TRUE)+
                dark_theme_gray() +
                enter_fade() +
                exit_fade()
  Planck_Gif <<- Planck_Gif
}


