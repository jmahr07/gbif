library(rgbif)
library(magick)
library(tidyverse)

#Get monarch taxonKey
monarch <- name_backbone("Danaus plexippus")$usageKey

#Base aesthetics
rect_xmin <- 0
rect_ymin <- 0
rect_xmax <- 1524
rect_ymax <- 1524
rect_fill <- "#e6e8d0"
jan_label <- tibble(x = c(250,
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
feb_label <- tibble(x = c(250,
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
                    alpha = c(0.25,
                              1,
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
                    bold = c("plain",
                             "bold",
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
mar_label <- tibble(x = c(250,
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
                    alpha = c(0.25,
                              0.25,
                              1,
                              0.25,
                              0.25,
                              0.25,
                              0.25,
                              0.25,
                              0.25,
                              0.25,
                              0.25,
                              0.25),
                    bold = c("plain",
                             "plain",
                             "bold",
                             "plain",
                             "plain",
                             "plain",
                             "plain",
                             "plain",
                             "plain",
                             "plain",
                             "plain",
                             "plain"))
apr_label <- tibble(x = c(250,
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
                    alpha = c(0.25,
                              0.25,
                              0.25,
                              1,
                              0.25,
                              0.25,
                              0.25,
                              0.25,
                              0.25,
                              0.25,
                              0.25,
                              0.25),
                    bold = c("plain",
                             "plain",
                             "plain",
                             "bold",
                             "plain",
                             "plain",
                             "plain",
                             "plain",
                             "plain",
                             "plain",
                             "plain",
                             "plain"))
may_label <- tibble(x = c(250,
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
                    alpha = c(0.25,
                              0.25,
                              0.25,
                              0.25,
                              1,
                              0.25,
                              0.25,
                              0.25,
                              0.25,
                              0.25,
                              0.25,
                              0.25),
                    bold = c("plain",
                             "plain",
                             "plain",
                             "plain",
                             "bold",
                             "plain",
                             "plain",
                             "plain",
                             "plain",
                             "plain",
                             "plain",
                             "plain"))
jun_label <- tibble(x = c(250,
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
                    alpha = c(0.25,
                              0.25,
                              0.25,
                              0.25,
                              0.25,
                              1,
                              0.25,
                              0.25,
                              0.25,
                              0.25,
                              0.25,
                              0.25),
                    bold = c("plain",
                             "plain",
                             "plain",
                             "plain",
                             "plain",
                             "bold",
                             "plain",
                             "plain",
                             "plain",
                             "plain",
                             "plain",
                             "plain"))
jul_label <- tibble(x = c(250,
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
                    alpha = c(0.25,
                              0.25,
                              0.25,
                              0.25,
                              0.25,
                              0.25,
                              1,
                              0.25,
                              0.25,
                              0.25,
                              0.25,
                              0.25),
                    bold = c("plain",
                             "plain",
                             "plain",
                             "plain",
                             "plain",
                             "plain",
                             "bold",
                             "plain",
                             "plain",
                             "plain",
                             "plain",
                             "plain"))
aug_label <- tibble(x = c(250,
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
                    alpha = c(0.25,
                              0.25,
                              0.25,
                              0.25,
                              0.25,
                              0.25,
                              0.25,
                              1,
                              0.25,
                              0.25,
                              0.25,
                              0.25),
                    bold = c("plain",
                             "plain",
                             "plain",
                             "plain",
                             "plain",
                             "plain",
                             "plain",
                             "bold",
                             "plain",
                             "plain",
                             "plain",
                             "plain"))
sep_label <- tibble(x = c(250,
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
                    alpha = c(0.25,
                              0.25,
                              0.25,
                              0.25,
                              0.25,
                              0.25,
                              0.25,
                              0.25,
                              1,
                              0.25,
                              0.25,
                              0.25),
                    bold = c("plain",
                             "plain",
                             "plain",
                             "plain",
                             "plain",
                             "plain",
                             "plain",
                             "plain",
                             "bold",
                             "plain",
                             "plain",
                             "plain"))
oct_label <- tibble(x = c(250,
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
                    alpha = c(0.25,
                              0.25,
                              0.25,
                              0.25,
                              0.25,
                              0.25,
                              0.25,
                              0.25,
                              0.25,
                              1,
                              0.25,
                              0.25),
                    bold = c("plain",
                             "plain",
                             "plain",
                             "plain",
                             "plain",
                             "plain",
                             "plain",
                             "plain",
                             "plain",
                             "bold",
                             "plain",
                             "plain"))
nov_label <- tibble(x = c(250,
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
                    alpha = c(0.25,
                              0.25,
                              0.25,
                              0.25,
                              0.25,
                              0.25,
                              0.25,
                              0.25,
                              0.25,
                              0.25,
                              1,
                              0.25),
                    bold = c("plain",
                             "plain",
                             "plain",
                             "plain",
                             "plain",
                             "plain",
                             "plain",
                             "plain",
                             "plain",
                             "plain",
                             "bold",
                             "plain"))
dec_label <- tibble(x = c(250,
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
                    alpha = c(0.25,
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
                              1),
                    bold = c("plain",
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
                             "bold"))
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

#Map aesthetics
z <- 2
x <- 1:2
y <- 0:1
basisOfRecord <- "HUMAN_OBSERVATION"
source <- "adhoc"
style <- "orange.marker"
bin <- "hex"
base_style <- "gbif-natural"

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

#FEB
##Create base for title and labels
feb_base <- 
  ggplot() +
  geom_rect(aes(xmin = rect_xmin, ymin = rect_ymin, xmax = rect_xmax, ymax = rect_ymax),
            fill = rect_fill,
            color = rect_fill) +
  geom_text(aes(x = feb_label$x, y = feb_label$y, label = feb_label$label),
            fontface = feb_label$bold,
            alpha = feb_label$alpha,
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
ggsave("feb_base.png", feb_base, width = 1524, height = 1524, units = "px")

###Read base
feb_png <- 
  image_read("feb_base.png")

##Create map
feb_map <- 
  map_fetch(z = z, x = x, y = y, 
            taxonKey = monarch,
            month = 2,
            basisOfRecord = basisOfRecord,
            source = source,
            style = style,
            bin = bin,
            base_style = base_style)

##Join base + map
feb <- 
  image_composite(feb_png, feb_map, offset = "+250+250")

#MAR
##Create base for title and labels
mar_base <- 
  ggplot() +
  geom_rect(aes(xmin = rect_xmin, ymin = rect_ymin, xmax = rect_xmax, ymax = rect_ymax),
            fill = rect_fill,
            color = rect_fill) +
  geom_text(aes(x = mar_label$x, y = mar_label$y, label = mar_label$label),
            fontface = mar_label$bold,
            alpha = mar_label$alpha,
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
ggsave("mar_base.png", mar_base, width = 1524, height = 1524, units = "px")

###Read base
mar_png <- 
  image_read("mar_base.png")

##Create map
mar_map <- 
  map_fetch(z = z, x = x, y = y, 
            taxonKey = monarch,
            month = 3,
            basisOfRecord = basisOfRecord,
            source = source,
            style = style,
            bin = bin,
            base_style = base_style)

##Join base + map
mar <- 
  image_composite(mar_png, mar_map, offset = "+250+250")

#APR
##Create base for title and labels
apr_base <- 
  ggplot() +
  geom_rect(aes(xmin = rect_xmin, ymin = rect_ymin, xmax = rect_xmax, ymax = rect_ymax),
            fill = rect_fill,
            color = rect_fill) +
  geom_text(aes(x = apr_label$x, y = apr_label$y, label = apr_label$label),
            fontface = apr_label$bold,
            alpha = apr_label$alpha,
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
ggsave("apr_base.png", apr_base, width = 1524, height = 1524, units = "px")

###Read base
apr_png <- 
  image_read("apr_base.png")

##Create map
apr_map <- 
  map_fetch(z = z, x = x, y = y, 
            taxonKey = monarch,
            month = 4,
            basisOfRecord = basisOfRecord,
            source = source,
            style = style,
            bin = bin,
            base_style = base_style)

##Join base + map
apr <- 
  image_composite(apr_png, apr_map, offset = "+250+250")

#MAY
##Create base for title and labels
may_base <- 
  ggplot() +
  geom_rect(aes(xmin = rect_xmin, ymin = rect_ymin, xmax = rect_xmax, ymax = rect_ymax),
            fill = rect_fill,
            color = rect_fill) +
  geom_text(aes(x = may_label$x, y = may_label$y, label = may_label$label),
            fontface = may_label$bold,
            alpha = may_label$alpha,
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
ggsave("may_base.png", may_base, width = 1524, height = 1524, units = "px")

###Read base
may_png <- 
  image_read("may_base.png")

##Create map
may_map <- 
  map_fetch(z = z, x = x, y = y, 
            taxonKey = monarch,
            month = 5,
            basisOfRecord = basisOfRecord,
            source = source,
            style = style,
            bin = bin,
            base_style = base_style)

##Join base + map
may <- 
  image_composite(may_png, may_map, offset = "+250+250")

#JUN
##Create base for title and labels
jun_base <- 
  ggplot() +
  geom_rect(aes(xmin = rect_xmin, ymin = rect_ymin, xmax = rect_xmax, ymax = rect_ymax),
            fill = rect_fill,
            color = rect_fill) +
  geom_text(aes(x = jun_label$x, y = jun_label$y, label = jun_label$label),
            fontface = jun_label$bold,
            alpha = jun_label$alpha,
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
ggsave("jun_base.png", jun_base, width = 1524, height = 1524, units = "px")

###Read base
jun_png <- 
  image_read("jun_base.png")

##Create map
jun_map <- 
  map_fetch(z = z, x = x, y = y, 
            taxonKey = monarch,
            month = 6,
            basisOfRecord = basisOfRecord,
            source = source,
            style = style,
            bin = bin,
            base_style = base_style)

##Join base + map
jun <- 
  image_composite(jun_png, jun_map, offset = "+250+250")

#JUL
##Create base for title and labels
jul_base <- 
  ggplot() +
  geom_rect(aes(xmin = rect_xmin, ymin = rect_ymin, xmax = rect_xmax, ymax = rect_ymax),
            fill = rect_fill,
            color = rect_fill) +
  geom_text(aes(x = jul_label$x, y = jul_label$y, label = jul_label$label),
            fontface = jul_label$bold,
            alpha = jul_label$alpha,
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
ggsave("jul_base.png", jul_base, width = 1524, height = 1524, units = "px")

###Read base
jul_png <- 
  image_read("jul_base.png")

##Create map
jul_map <- 
  map_fetch(z = z, x = x, y = y, 
            taxonKey = monarch,
            month = 7,
            basisOfRecord = basisOfRecord,
            source = source,
            style = style,
            bin = bin,
            base_style = base_style)

##Join base + map
jul <- 
  image_composite(jul_png, jul_map, offset = "+250+250")

#AUG
##Create base for title and labels
aug_base <- 
  ggplot() +
  geom_rect(aes(xmin = rect_xmin, ymin = rect_ymin, xmax = rect_xmax, ymax = rect_ymax),
            fill = rect_fill,
            color = rect_fill) +
  geom_text(aes(x = aug_label$x, y = aug_label$y, label = aug_label$label),
            fontface = aug_label$bold,
            alpha = aug_label$alpha,
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
ggsave("aug_base.png", aug_base, width = 1524, height = 1524, units = "px")

###Read base
aug_png <- 
  image_read("aug_base.png")

##Create map
aug_map <- 
  map_fetch(z = z, x = x, y = y, 
            taxonKey = monarch,
            month = 8,
            basisOfRecord = basisOfRecord,
            source = source,
            style = style,
            bin = bin,
            base_style = base_style)

##Join base + map
aug <- 
  image_composite(aug_png, aug_map, offset = "+250+250")

#SEP
##Create base for title and labels
sep_base <- 
  ggplot() +
  geom_rect(aes(xmin = rect_xmin, ymin = rect_ymin, xmax = rect_xmax, ymax = rect_ymax),
            fill = rect_fill,
            color = rect_fill) +
  geom_text(aes(x = sep_label$x, y = sep_label$y, label = sep_label$label),
            fontface = sep_label$bold,
            alpha = sep_label$alpha,
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
ggsave("sep_base.png", sep_base, width = 1524, height = 1524, units = "px")

###Read base
sep_png <- 
  image_read("sep_base.png")

##Create map
sep_map <- 
  map_fetch(z = z, x = x, y = y, 
            taxonKey = monarch,
            month = 9,
            basisOfRecord = basisOfRecord,
            source = source,
            style = style,
            bin = bin,
            base_style = base_style)

##Join base + map
sep <- 
  image_composite(sep_png, sep_map, offset = "+250+250")

#OCT
##Create base for title and labels
oct_base <- 
  ggplot() +
  geom_rect(aes(xmin = rect_xmin, ymin = rect_ymin, xmax = rect_xmax, ymax = rect_ymax),
            fill = rect_fill,
            color = rect_fill) +
  geom_text(aes(x = oct_label$x, y = oct_label$y, label = oct_label$label),
            fontface = oct_label$bold,
            alpha = oct_label$alpha,
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
ggsave("oct_base.png", oct_base, width = 1524, height = 1524, units = "px")

###Read base
oct_png <- 
  image_read("oct_base.png")

##Create map
oct_map <- 
  map_fetch(z = z, x = x, y = y, 
            taxonKey = monarch,
            month = 10,
            basisOfRecord = basisOfRecord,
            source = source,
            style = style,
            bin = bin,
            base_style = base_style)

##Join base + map
oct <- 
  image_composite(oct_png, oct_map, offset = "+250+250")

#NOV
##Create base for title and labels
nov_base <- 
  ggplot() +
  geom_rect(aes(xmin = rect_xmin, ymin = rect_ymin, xmax = rect_xmax, ymax = rect_ymax),
            fill = rect_fill,
            color = rect_fill) +
  geom_text(aes(x = nov_label$x, y = nov_label$y, label = nov_label$label),
            fontface = nov_label$bold,
            alpha = nov_label$alpha,
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
ggsave("nov_base.png", nov_base, width = 1524, height = 1524, units = "px")

###Read base
nov_png <- 
  image_read("nov_base.png")

##Create map
nov_map <- 
  map_fetch(z = z, x = x, y = y, 
            taxonKey = monarch,
            month = 11,
            basisOfRecord = basisOfRecord,
            source = source,
            style = style,
            bin = bin,
            base_style = base_style)

##Join base + map
nov <- 
  image_composite(nov_png, nov_map, offset = "+250+250")

#DEC
##Create base for title and labels
dec_base <- 
  ggplot() +
  geom_rect(aes(xmin = rect_xmin, ymin = rect_ymin, xmax = rect_xmax, ymax = rect_ymax),
            fill = rect_fill,
            color = rect_fill) +
  geom_text(aes(x = dec_label$x, y = dec_label$y, label = dec_label$label),
            fontface = dec_label$bold,
            alpha = dec_label$alpha,
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
ggsave("dec_base.png", dec_base, width = 1524, height = 1524, units = "px")

###Read base
dec_png <- 
  image_read("dec_base.png")

##Create map
dec_map <- 
  map_fetch(z = z, x = x, y = y, 
            taxonKey = monarch,
            month = 12,
            basisOfRecord = basisOfRecord,
            source = source,
            style = style,
            bin = bin,
            base_style = base_style)

##Join base + map
dec <- 
  image_composite(dec_png, dec_map, offset = "+250+250")

#Group maps and create .gif
year <- c(jan, feb, mar, apr, may, jun, jul, aug, sep, oct, nov, dec)

gif <- image_animate(year, fps = 2, optimize = TRUE)

image_write(gif, "monarch.gif")
