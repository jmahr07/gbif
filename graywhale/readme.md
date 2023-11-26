# Visualizing Gray Whale Migrations Through Human Observation
#### Created: 2023-11-18

Taking what I had learned through the [Puffin](/puffins) project and again relying on the [`rgbif`](https://github.com/ropensci/rgbif) and [`magick`](https://cran.r-project.org/web/packages/magick/vignettes/intro.html) packages. This time, using an animal with a known and notable migration pattern.

<p align = "center">
  <img src = "./graywhale">
</p>

Followed the same process as in [Puffins](/puffins): 
* Create maps for each month using `map_fetch()`
* Add annotations with `image_annotate()`
* Stiching them altogether in a gif with `image_animate`

## Strange Artifacts
