# Visualizing Monarch Butterfly Migrations with Human Observations
#### Created: 2023-11-20

Following a similar process to the [Gray Whale](/graywhales) and [Puffin](/puffins) project, using the `rgbif` and `magick` packages to visualize migration patterns. Here I also make use of `ggplot` to create a base layer for more appealing annotations.

<p align = "center">
  <img  src = "https://github.com/jmahr07/gbif/blob/main/monarchs/monarch.gif?raw=true">
</p>

### Using `ggplot` for the base layer

As `magick`'s `image_annotate()` function has limited capabilities, I used `ggplot` to create a base layer that was more customizable. This involved setting values for the base `geom_rect()` as well as a tibble with values to place the labels for each month and to bold the respective month through `geom_text`. Additional values were added to define the title and caption aesthetics.

``` r
#Base aesthetics
rect_xmin <- 0
rect_ymin <- 0
rect_xmax <- 1524
rect_ymax <- 1524
rect_fill <- "#e6e8d0"
jan_label <- tibble(x = c(250, ##repeat for each month, changing the alpha and bold values accordingly
                          250+(1024/11),
                          250+((1024/11)*2),
                          250+((1024/11)*3),
                          250+((1024/11)*4),
                          250+((1024/11)*5),
                          250+((1024/11)*6),
                          250+((1024/11)*7),
                          250+((1024/11)*8),
                          250+((1024/11)*9),
                          250+((1024/11)*10),
                          1274),
                    y = rep(125, times = 12),
                    label = c("Jan",
                              "Feb",
                              "Mar",
                              "Apr",
                              "May",
                              "Jun",
                              "Jul",
                              "Aug",
                              "Sep",
                              "Oct",
                              "Nov",
                              "Dec"),
                    alpha = c(1,
                              0.25,
                              0.25,
                              0.25,
                              0.25,
                              0.25,
                              0.25,
                              0.25,
                              0.25,
                              0.25,
                              0.25,
                              0.25),
                    bold = c("bold",
                             "plain",
                             "plain",
                             "plain",
                             "plain",
                             "plain",
                             "plain",
                             "plain",
                             "plain",
                             "plain",
                             "plain",
                             "plain"))
label_family <- "Consolas"
month_size <- 3
alpha_mute <- 0.25
bold_highlight <- "bold"
title_x <- 762
title_y <- 1524-25
caption_x <- 762
caption_y <- 1524-125
title_label <- "Monarch Butterfly Migrations"
caption_label <- "Human observation of Monarch Butterflies by month.\ngbif.org | {rgbif} | map_fetch() | {magick}"
title_face <- "bold"
title_size <- 5
caption_size <- 2
```

The base layer for each month could then be created, saved as a png, and then read back into r with `image_read`. I found this process to be necessary as `magick` can not read ggplots on their own.

``` r
#JAN
##Create base for title and labels
jan_base <- 
  ggplot() +
  geom_rect(aes(xmin = rect_xmin, ymin = rect_ymin, xmax = rect_xmax, ymax = rect_ymax),
            fill = rect_fill,
            color = rect_fill) +
  geom_text(aes(x = jan_label$x, y = jan_label$y, label = jan_label$label),
            fontface = jan_label$bold,
            alpha = jan_label$alpha,
            family = label_family,
            size = month_size) +
  geom_text(aes(x = title_x, y = title_y, label = title_label),
            fontface = title_face,
            family = label_family,
            size = title_size) +
  geom_text(aes(x = caption_x, y = caption_y, label = caption_label),
            family = label_family,
            size = caption_size) +
  theme_void() +
  theme(plot.background = element_rect(fill = rect_fill, color = rect_fill))

###Save base
ggsave("jan_base.png", jan_base, width = 1524, height = 1524, units = "px")

###Read base
jan_png <- 
  image_read("jan_base.png")
```
<p align = "center">
  <img src = "https://github.com/jmahr07/gbif/blob/main/monarchs/jan_base.png?raw=true">
</p>

From here, the map can be created for the respective month using `map_fetch()`, and can then be added on top of the background with `image_composite`.

``` r
##Create map
jan_map <- 
  map_fetch(z = z, x = x, y = y, 
            taxonKey = monarch,
            month = 1,
            basisOfRecord = basisOfRecord,
            source = source,
            style = style,
            bin = bin,
            base_style = base_style)

##Join base + map
jan <- 
  image_composite(jan_png, jan_map, offset = "+250+250")
```

Once completed for all months, the gif can be created (refer to Puffins(/puffins) for a more extensive description of this process).
