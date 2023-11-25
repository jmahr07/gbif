# Visualizaing Puffin Migrations
#### Created: 2023-11-17

![Data visualization for the Puffins project showing a map of the north east United States and eartern Canada coastal waters with points indiciation recorded observations of Fratercula arctica. In gif format, the visualizations shows observations recorded each month. It is possible to discern an increase in observations in the far north during the summer months.](/puffins/puffins.gif)

This was my first attempt at using [`map_fetch()`](https://docs.ropensci.org/rgbif/reference/map_fetch.html), a feature of the [`rgibf`](https://docs.ropensci.org/rgbif/index.html) package, to fetch maps of [GBIF](https://www.gbif.org) data. As `map_fetch()` outputs external pointers of class 'magick-image', I used the [`{magick}`](https://cran.r-project.org/web/packages/magick/vignettes/intro.html) package to handle the image processing, which includes the map annotations and stitching together the different images into gif. 

## Discovering gifs
Arriving at the gif format was somewhat of an accident. I had been making some test maps and had grouped two into a single value. Calling that value resulted in a preview slideshow that resembled a gif and got me to look into the `magick` package's `image_animate()` function.

``` r
library(rgbif)
library(magick)

taxonKey <- name_backbone("Fratercula arctica")$usageKey

jan_test <- map_fetch(z = 4, x = 9:12, y = 1:4, 
                      taxonKey = taxonKey, 
                      month = 1,
                      basisOfRecord = "HUMAN_OBSERVATION",
                      source = "adhoc",
                      style = "scaled.circles", 
                      base_style = "gbif-dark") 

feb_test <- map_fetch(z = 4, x = 9:12, y = 1:4, 
                      taxonKey = taxonKey, 
                      month = 2,
                      basisOfRecord = "HUMAN_OBSERVATION",
                      source = "adhoc",
                      style = "scaled.circles", 
                      base_style = "gbif-dark") 

year_test <- c(jan_test, feb_test)

year_test
```

<p align="center">
  <img width="500" height="500" src="https://raw.githubusercontent.com/jmahr07/gbif/main/puffins/year_test.gif">
</p>

## Map aesthetics
In order to make the gif, it is necessary to create a map for each month. Setting values for the various aesthetics makes it easy to adjust all maps at once:

``` r
library(rgbif)
library(magick)

taxonKey <- name_backbone("Fratercula arctica")$usageKey

#Map aesthetics
##These can be changed to adjust all maps at once
z = 4
x = 9:12
y = 1:4
basisOfRecord <- "HUMAN_OBSERVATION"
source <- "adhoc"
style <- 'scaled.circles'
base_style <- "gbif-dark"
font = "mono"
fontsize1 = 70
fontsize2 = 40
gravity1 = "northwest"
gravity2 = "southeast"
color = "white"

#Create map
jan <-
  map_fetch(z = z, x = x, y = y, 
            taxonKey = taxonKey, 
            month = 1,
            basisOfRecord = basisOfRecord,
            source = source,
            style = style, 
            base_style = base_style)  %>% 
  image_annotate("[J] F  M  A  M  J  J  A  S  O  N  D ", 
                 font = font, 
                 size = fontsize1, 
                 gravity = gravity1, 
                 color = color) %>% 
  image_annotate("Arctic Puffin (Fratercula arctica) Occurrences by Month  
                 gbif.org | {rgbif} | map_fetch() | {magick}  
                 
                 Summer migration to the north for breeding + increase in  
                 human observation during summer months.  
                 ",
                 font = font,
                 size = fontsize2,
                 gravity = gravity2,
                 color = color)

#Repeat for feb, mar, apr, ..., changing the month number and label as needed.
```

I make deeper use of such aesthetic values and group them in tibbles in later projects like [Monarchs](/monarchs) and [Terns](/terns).

To indicate the month, it was necessary to add a unique annotation to each map via `image_annotate("[J] F  M  A  M  J  J  A  S  O  N  D ")`. 

## Creating the gif
Once the maps for each month have been created, they can be grouped into a value and then saved as a gif.

``` r
#Group maps
year <- c(jan, feb, mar, apr, may, jun, jul, aug, sep, oct, nov, dec)

#Create and save .gif
gif <- image_resize(year, '900') %>%
  image_morph() %>% 
  image_animate(fps = 5, optimize = TRUE)

image_write(gif, "puffins.gif")
```

`image_morph()` creates a gradient of images between each two images, allowing for smooth transitions.

### With `image_morph()`
``` r
image_morph(year) %>% 
  image_animate(fps = 5, optimize = TRUE)
```
<p align="center">
  <img width="500" height="500" src="https://github.com/jmahr07/gbif/blob/main/puffins/puffins.gif?raw=true">
</p>

### Without `image_morph()`
``` r
image_animate(year, fps = 5, optimize = TRUE)
```
<p align="center">
  <img width="500" height="500" src="https://github.com/jmahr07/gbif/blob/main/puffins/no_morph.gif?raw=true">
</p>

## Thoughts
In the end, `magick` provides a minimal amount of options when it comes to annotations. In later projects I use `ggplot` to create a base layer that is more customizable ([Monarchs](/monarchs) | [Terns](/terns)). I've also found that minimizing the amount of layers added to each map greatly speeds up the gif creation process.

In regards to the data itself, I was interested in gif format as a way visualize migration patterns. While *Fratercula arctica* does breed in the North Atlantic and often migrates farther north for breeding, we should also consider that human observations increase in the warm summer months in that area as well, as more people visit the area for tourism and spend more time outside. Puffins also spend winters farther out at sea, making human observation less likely. The `basisOfRecord` used to filter which observations should be used in the maps was `"HUMAN_OBSERVATION"`, which disregards observations of preserved specimens or of animals in captivity.
