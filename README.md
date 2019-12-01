# Planck
```{r setup }
install_github("https://github.com/ajcastanedag/Planck")

library(devtools)
library(ggplot2)
library(gganimate)
library(Planck)
```
### Define Dataframe
First, create de dataframe wich contains the Planck data:

    ```{r dataframe}
    DefinePlanckData()
    ```
### Simple plot
Make a basic plot using ggplot:

    ```{r simpleplot}
    PlotPlanckData(PlankData_F)
    ```
### Simple plot
Make a basic animation using gganimate:

    ```{r simplegif}
    GifPlanckData(Planck_Graph)

    ```    

