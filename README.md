# Planck

install_github("https://github.com/ajcastanedag/Planck")

library(devtools)
library(ggplot2)
library(gganimate)
library(Planck)

DefinePlanckData()

PlotPlanckData(PlankData_F)

GifPlanckData(Planck_Graph)

```ruby
require 'redcarpet'
markdown = Redcarpet.new("Hello World!")
puts markdown.to_html
```
