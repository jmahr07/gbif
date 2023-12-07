# GBIF
**Last Update:: 2023-07-12**

Data visualization with data from [GBIF](https://www.gbif.org). Using [`rgbif`](https://github.com/ropensci/rgbif) and a variety of other packages.

___

## [Arctic Tern Migrations Visualized Through Reported Observations](terns/)
**Created:: 2023-11-24**

![Visualizing for the Arctic Terns project showing two maps of the world. On the left we see the Earth from the north pole, and on the right we see it from the south pole. The gif animation cycles through the months of the year, and circles are displayed on each map to indicate the location and quantity of arctic tern observations. In the summer months, there are peaks in observations around the North Pole and across the northern hemisphere. During the winter months, observations appear more commonly in the southern hemisphere.](./terns/terns.gif)

###### Packages: [`rgbif`](https://github.com/ropensci/rgbif) | [`magick`](https://github.com/ropensci/magick) | [`tidyverse` & `ggplot`](https://github.com/tidyverse) | [`cowplot`](https://github.com/wilkelab/cowplot)
###### Code:: [terns.R](./terns/terns.R)
###### Other Links: [GBIF](https://www.gbif.org) | [`map_fetch()`](https://data-blog.gbif.org/post/2023-03-24-maps-api/)

___

## [Visualizing Monarch Butterfly Migrations with Human Observations](monarchs/)
**Created:: 2023-11-20**

![Visualization showing monarch observations per month across across North America. Red circles on the map indicate location and quantity of monarch observations. During the summer, observations are noted across the United States and into Canada. In the winter months, observations are mainly constrained to Mexico and the very southern United States.](./monarchs/monarch.gif)

###### Packages: [`rgbif`](https://github.com/ropensci/rgbif) |  [`magick`](https://github.com/ropensci/magick) | [`ggplot` & `tidyverse`](https://github.com/tidyverse)
###### Code:: [monarchs.R](./monarchs/monarchs.R)
###### Other Links: [GBIF](https://www.gbif.org) | [`map_fetch()`](https://data-blog.gbif.org/post/2023-03-24-maps-api/)

___

## [Visualizing Gray Whale Migrations Through Human Observation](graywhale/)
**Created:: 2023-11-18**

![Visualizations of gray whale migrations based on human observations. A map showing the western North America with blue circles indicating location and volume of gray whale observations. The gif proceeds through the 12 months of the year, showing observations around Alaska in the later summer, and a gradual migration down to Mexico in the winter months.](./graywhale/graywhale_migration.gif)

###### Packages: [`rgbif`](https://github.com/ropensci/rgbif) |  [`magick`](https://github.com/ropensci/magick)
###### Code:: [graywhale.R](./graywhale/graywhale.R)
###### Other Links: [GBIF](https://www.gbif.org) | [`map_fetch()`](https://data-blog.gbif.org/post/2023-03-24-maps-api/)

___

## [Visualizing Puffin Migrations](puffins/)
**Created:: 2023-11-17**

![Visualization showing a map of the northeastern United States and eastern Canada, as well as the southern tip of Greenland. Circles on the map identify locations where Puffins have been observed in a given month. As the gif progresses through the months, it is possible to discern greater numbers of puffins in the far north during the summer months, and a retreat south in the winter months.](./puffins/puffins.gif)

###### Packages: [`rgbif`](https://github.com/ropensci/rgbif) |  [`magick`](https://github.com/ropensci/magick)
###### Code:: [puffins.R](./puffins/puffins.R)
###### Other Links: [GBIF](https://www.gbif.org) | [`map_fetch()`](https://data-blog.gbif.org/post/2023-03-24-maps-api/)

___

## [Broadleaf Tree Distribution Across Montreal](montreeal/)
**Created:: 2023-11-17**

![A visual with eight maps of the island of Montreal. Each map is composed of gray dots, identifying observations of all vascular plants across the island. Specific dots are highlighted in a unique color on each map to identify different broadleaf tree genera, and contours are drawn around the observation to locate high density populations of each tree.](./montreeal/montreeal.png)

###### Packages: [`rgbif`](https://github.com/ropensci/rgbif) | [`tidyverse` & `ggplot`](https://github.com/tidyverse) |  [`patchwork`](https://github.com/thomasp85/patchwork/tree/main)
###### Code:: [montreeal.R](./montreeal/montreeal.R)
###### Other Links: [GBIF](https://www.gbif.org) | [Download the Data](./[0059247-231002084531237.zip](https://github.com/jmahr07/gbif/blob/main/montreeal/0059247-231002084531237.zip "0059247-231002084531237.zip"))
