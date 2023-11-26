# Visualizing Gray Whale Migrations Through Human Observation
#### Created: 2023-11-18

Taking what I had learned through the [Puffin](/puffins) project and again relying on the [`rgbif`](https://github.com/ropensci/rgbif) and [`magick`](https://cran.r-project.org/web/packages/magick/vignettes/intro.html) packages. This time, using an animal with a known and notable migration pattern.

<p align = "center">
  <img src = "./graywhale_migration.gif">
</p>

Followed the same process as in [Puffins](/puffins): 
* Create maps for each month using `map_fetch()`
* Add annotations with `image_annotate()`
* Stich them altogether in a gif with `image_animate()`

### Visual Artifacts with `image_animate()`
Originally I had set `optimize = TRUE` within the final `image_animate()` function used to create the gif. I hadn't read the documentation fully and simply assumed I would want the gif to be "optimized", but turns out that `optimize` reduces the gif file size by storing only the differences between frames. While there is theoretically very little difference between the frames in this case (the only changes are the location of the observation markers and month annotation, leaving `optimize = TRUE` resulted in some subtle visual artifacts (watch at Feb. and Nov. specifically):

``` r
image_resize(year, '600') %>%
  image_animate(fps = 2, optimize = TRUE)
```
 <p align = "center">
  <img src = "./graywhale_optimize.gif">
</p>

This results in a gif with a 152KB filesize. Setting `optimize` to FALSE removes these artifacts and results in a 344KB gif:

``` r
image_resize(year, '600') %>%
  image_animate(fps = 2, optimize = TRUE)
```
 <p align = "center">
  <img src = "./graywhale_migration.gif">
</p>
