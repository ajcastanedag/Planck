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

```{r setup}
set.seed(1234)
library(ggplot2)
library(lattice)
```
