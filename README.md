# Planck

```{r }
install_github("https://github.com/ajcastanedag/Planck")

library(devtools)
library(ggplot2)
library(gganimate)
library(Planck)

DefinePlanckData()

PlotPlanckData(PlankData_F)

GifPlanckData(Planck_Graph)
```

    ```{r }
    x <- 1:10
    y <- round(rnorm(10, x, 1), 2)
    df <- data.frame(x, y)
    df
    ```
