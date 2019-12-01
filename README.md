# Planck

```{R }
install_github("https://github.com/ajcastanedag/Planck")

library(devtools)
library(ggplot2)
library(gganimate)
library(Planck)

DefinePlanckData()

PlotPlanckData(PlankData_F)

GifPlanckData(Planck_Graph)
```

```{r}
# execute code if the date is later than a specified day
do_it = Sys.Date() > '2018-02-14'
```
