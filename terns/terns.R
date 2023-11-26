library(tidyverse)
library(rgbif)
library(magick)
library(cowplot)

#Get tern taxonKey
tern <- name_backbone("Sterna paradisaea")$usageKey

#AESTHETICS
##base plot
rect <- tibble(xmin = 0,
               xmax = 1792,
               ymin = 0,
               ymax = 1024,
               fill = "#ececec")
title <- tibble(x = 896,
                y = 960,
                label = "Arctic Tern Migrations Visualized Through Reported Observations",
                family = "SF Pro Display",
                fontface = "bold",
                size = 4)
caption <- tibble(x = 896,
                  y = 896,
                  label = "Data from gbif.org | Maps fetched on 2023-11-24",
                  family = "SF Pro Display",
                  size = 3)
poles <- tibble(x = c(512,1280),
                y = 224,
                label = c("North Pole", "South Pole"),
                family = "SF Mono",
                size = 3)
month <- tibble(x = 896, 
                y = 512,
                jan_label = "MONTH:\n01",
                feb_label = "MONTH:\n02",
                mar_label = "MONTH:\n03",
                apr_label = "MONTH:\n04",
                may_label = "MONTH:\n05",
                jun_label = "MONTH:\n06",
                jul_label = "MONTH:\n07",
                aug_label = "MONTH:\n08",
                sep_label = "MONTH:\n09",
                oct_label = "MONTH:\n10",
                nov_label = "MONTH:\n11",
                dec_label = "MONTH:\n12",
                family = "SF Mono",
                size = 2.5)

#ggplot to make base layers
##jan
jan_base <- ggplot() +
  geom_rect(aes(xmin = rect$xmin, xmax = rect$xmax, ymin = rect$ymin, ymax = rect$ymax), 
            fill = rect$fill, 
            color = rect$fill) +
  geom_text(aes(x = title$x, y = title$y, label = title$label),
            family = title$family,
            fontface = title$fontface,
            size = title$size) +
  geom_text(aes(x = caption$x, y = caption$y, label = caption$label),
            family = caption$family,
            size = caption$size) +
  geom_text(aes(x = poles$x, y = poles$y, label = poles$label),
            family = poles$family,
            size = poles$size) +
  geom_text(aes(x = month$x, y = month$y, label = month$jan_label),
            family = month$family,
            size = month$size) +
  theme_nothing() +
  scale_x_continuous(expand=c(0,0)) +
  scale_y_continuous(expand=c(0,0)) +
  labs(x = NULL, y = NULL)


ggsave("jan_base.png", jan_base, width = 1792, height = 1024, units = "px")

jan_png <- image_read("jan_base.png")

##feb
feb_base <- ggplot() +
  geom_rect(aes(xmin = rect$xmin, xmax = rect$xmax, ymin = rect$ymin, ymax = rect$ymax), 
            fill = rect$fill, 
            color = rect$fill) +
  geom_text(aes(x = title$x, y = title$y, label = title$label),
            family = title$family,
            fontface = title$fontface,
            size = title$size) +
  geom_text(aes(x = caption$x, y = caption$y, label = caption$label),
            family = caption$family,
            size = caption$size) +
  geom_text(aes(x = poles$x, y = poles$y, label = poles$label),
            family = poles$family,
            size = poles$size) +
  geom_text(aes(x = month$x, y = month$y, label = month$feb_label),
            family = month$family,
            size = month$size) +
  theme_nothing() +
  scale_x_continuous(expand=c(0,0)) +
  scale_y_continuous(expand=c(0,0)) +
  labs(x = NULL, y = NULL)


ggsave("feb_base.png", feb_base, width = 1792, height = 1024, units = "px")

feb_png <- image_read("feb_base.png")

##mar
mar_base <- ggplot() +
  geom_rect(aes(xmin = rect$xmin, xmax = rect$xmax, ymin = rect$ymin, ymax = rect$ymax), 
            fill = rect$fill, 
            color = rect$fill) +
  geom_text(aes(x = title$x, y = title$y, label = title$label),
            family = title$family,
            fontface = title$fontface,
            size = title$size) +
  geom_text(aes(x = caption$x, y = caption$y, label = caption$label),
            family = caption$family,
            size = caption$size) +
  geom_text(aes(x = poles$x, y = poles$y, label = poles$label),
            family = poles$family,
            size = poles$size) +
  geom_text(aes(x = month$x, y = month$y, label = month$mar_label),
            family = month$family,
            size = month$size) +
  theme_nothing() +
  scale_x_continuous(expand=c(0,0)) +
  scale_y_continuous(expand=c(0,0)) +
  labs(x = NULL, y = NULL)


ggsave("mar_base.png", mar_base, width = 1792, height = 1024, units = "px")

mar_png <- image_read("mar_base.png")

##apr
apr_base <- ggplot() +
  geom_rect(aes(xmin = rect$xmin, xmax = rect$xmax, ymin = rect$ymin, ymax = rect$ymax), 
            fill = rect$fill, 
            color = rect$fill) +
  geom_text(aes(x = title$x, y = title$y, label = title$label),
            family = title$family,
            fontface = title$fontface,
            size = title$size) +
  geom_text(aes(x = caption$x, y = caption$y, label = caption$label),
            family = caption$family,
            size = caption$size) +
  geom_text(aes(x = poles$x, y = poles$y, label = poles$label),
            family = poles$family,
            size = poles$size) +
  geom_text(aes(x = month$x, y = month$y, label = month$apr_label),
            family = month$family,
            size = month$size) +
  theme_nothing() +
  scale_x_continuous(expand=c(0,0)) +
  scale_y_continuous(expand=c(0,0)) +
  labs(x = NULL, y = NULL)


ggsave("apr_base.png", apr_base, width = 1792, height = 1024, units = "px")

apr_png <- image_read("apr_base.png")

##may
may_base <- ggplot() +
  geom_rect(aes(xmin = rect$xmin, xmax = rect$xmax, ymin = rect$ymin, ymax = rect$ymax), 
            fill = rect$fill, 
            color = rect$fill) +
  geom_text(aes(x = title$x, y = title$y, label = title$label),
            family = title$family,
            fontface = title$fontface,
            size = title$size) +
  geom_text(aes(x = caption$x, y = caption$y, label = caption$label),
            family = caption$family,
            size = caption$size) +
  geom_text(aes(x = poles$x, y = poles$y, label = poles$label),
            family = poles$family,
            size = poles$size) +
  geom_text(aes(x = month$x, y = month$y, label = month$may_label),
            family = month$family,
            size = month$size) +
  theme_nothing() +
  scale_x_continuous(expand=c(0,0)) +
  scale_y_continuous(expand=c(0,0)) +
  labs(x = NULL, y = NULL)


ggsave("may_base.png", may_base, width = 1792, height = 1024, units = "px")

may_png <- image_read("may_base.png")

##jun
jun_base <- ggplot() +
  geom_rect(aes(xmin = rect$xmin, xmax = rect$xmax, ymin = rect$ymin, ymax = rect$ymax), 
            fill = rect$fill, 
            color = rect$fill) +
  geom_text(aes(x = title$x, y = title$y, label = title$label),
            family = title$family,
            fontface = title$fontface,
            size = title$size) +
  geom_text(aes(x = caption$x, y = caption$y, label = caption$label),
            family = caption$family,
            size = caption$size) +
  geom_text(aes(x = poles$x, y = poles$y, label = poles$label),
            family = poles$family,
            size = poles$size) +
  geom_text(aes(x = month$x, y = month$y, label = month$jun_label),
            family = month$family,
            size = month$size) +
  theme_nothing() +
  scale_x_continuous(expand=c(0,0)) +
  scale_y_continuous(expand=c(0,0)) +
  labs(x = NULL, y = NULL)


ggsave("jun_base.png", jun_base, width = 1792, height = 1024, units = "px")

jun_png <- image_read("jun_base.png")

##jul
jul_base <- ggplot() +
  geom_rect(aes(xmin = rect$xmin, xmax = rect$xmax, ymin = rect$ymin, ymax = rect$ymax), 
            fill = rect$fill, 
            color = rect$fill) +
  geom_text(aes(x = title$x, y = title$y, label = title$label),
            family = title$family,
            fontface = title$fontface,
            size = title$size) +
  geom_text(aes(x = caption$x, y = caption$y, label = caption$label),
            family = caption$family,
            size = caption$size) +
  geom_text(aes(x = poles$x, y = poles$y, label = poles$label),
            family = poles$family,
            size = poles$size) +
  geom_text(aes(x = month$x, y = month$y, label = month$jul_label),
            family = month$family,
            size = month$size) +
  theme_nothing() +
  scale_x_continuous(expand=c(0,0)) +
  scale_y_continuous(expand=c(0,0)) +
  labs(x = NULL, y = NULL)


ggsave("jul_base.png", jul_base, width = 1792, height = 1024, units = "px")

jul_png <- image_read("jul_base.png")

##aug
aug_base <- ggplot() +
  geom_rect(aes(xmin = rect$xmin, xmax = rect$xmax, ymin = rect$ymin, ymax = rect$ymax), 
            fill = rect$fill, 
            color = rect$fill) +
  geom_text(aes(x = title$x, y = title$y, label = title$label),
            family = title$family,
            fontface = title$fontface,
            size = title$size) +
  geom_text(aes(x = caption$x, y = caption$y, label = caption$label),
            family = caption$family,
            size = caption$size) +
  geom_text(aes(x = poles$x, y = poles$y, label = poles$label),
            family = poles$family,
            size = poles$size) +
  geom_text(aes(x = month$x, y = month$y, label = month$aug_label),
            family = month$family,
            size = month$size) +
  theme_nothing() +
  scale_x_continuous(expand=c(0,0)) +
  scale_y_continuous(expand=c(0,0)) +
  labs(x = NULL, y = NULL)


ggsave("aug_base.png", aug_base, width = 1792, height = 1024, units = "px")

aug_png <- image_read("aug_base.png")

##sep
sep_base <- ggplot() +
  geom_rect(aes(xmin = rect$xmin, xmax = rect$xmax, ymin = rect$ymin, ymax = rect$ymax), 
            fill = rect$fill, 
            color = rect$fill) +
  geom_text(aes(x = title$x, y = title$y, label = title$label),
            family = title$family,
            fontface = title$fontface,
            size = title$size) +
  geom_text(aes(x = caption$x, y = caption$y, label = caption$label),
            family = caption$family,
            size = caption$size) +
  geom_text(aes(x = poles$x, y = poles$y, label = poles$label),
            family = poles$family,
            size = poles$size) +
  geom_text(aes(x = month$x, y = month$y, label = month$sep_label),
            family = month$family,
            size = month$size) +
  theme_nothing() +
  scale_x_continuous(expand=c(0,0)) +
  scale_y_continuous(expand=c(0,0)) +
  labs(x = NULL, y = NULL)


ggsave("sep_base.png", sep_base, width = 1792, height = 1024, units = "px")

sep_png <- image_read("sep_base.png")

##oct
oct_base <- ggplot() +
  geom_rect(aes(xmin = rect$xmin, xmax = rect$xmax, ymin = rect$ymin, ymax = rect$ymax), 
            fill = rect$fill, 
            color = rect$fill) +
  geom_text(aes(x = title$x, y = title$y, label = title$label),
            family = title$family,
            fontface = title$fontface,
            size = title$size) +
  geom_text(aes(x = caption$x, y = caption$y, label = caption$label),
            family = caption$family,
            size = caption$size) +
  geom_text(aes(x = poles$x, y = poles$y, label = poles$label),
            family = poles$family,
            size = poles$size) +
  geom_text(aes(x = month$x, y = month$y, label = month$oct_label),
            family = month$family,
            size = month$size) +
  theme_nothing() +
  scale_x_continuous(expand=c(0,0)) +
  scale_y_continuous(expand=c(0,0)) +
  labs(x = NULL, y = NULL)


ggsave("oct_base.png", oct_base, width = 1792, height = 1024, units = "px")

oct_png <- image_read("oct_base.png")

##nov
nov_base <- ggplot() +
  geom_rect(aes(xmin = rect$xmin, xmax = rect$xmax, ymin = rect$ymin, ymax = rect$ymax), 
            fill = rect$fill, 
            color = rect$fill) +
  geom_text(aes(x = title$x, y = title$y, label = title$label),
            family = title$family,
            fontface = title$fontface,
            size = title$size) +
  geom_text(aes(x = caption$x, y = caption$y, label = caption$label),
            family = caption$family,
            size = caption$size) +
  geom_text(aes(x = poles$x, y = poles$y, label = poles$label),
            family = poles$family,
            size = poles$size) +
  geom_text(aes(x = month$x, y = month$y, label = month$nov_label),
            family = month$family,
            size = month$size) +
  theme_nothing() +
  scale_x_continuous(expand=c(0,0)) +
  scale_y_continuous(expand=c(0,0)) +
  labs(x = NULL, y = NULL)


ggsave("nov_base.png", nov_base, width = 1792, height = 1024, units = "px")

nov_png <- image_read("nov_base.png")

##dec
dec_base <- ggplot() +
  geom_rect(aes(xmin = rect$xmin, xmax = rect$xmax, ymin = rect$ymin, ymax = rect$ymax), 
            fill = rect$fill, 
            color = rect$fill) +
  geom_text(aes(x = title$x, y = title$y, label = title$label),
            family = title$family,
            fontface = title$fontface,
            size = title$size) +
  geom_text(aes(x = caption$x, y = caption$y, label = caption$label),
            family = caption$family,
            size = caption$size) +
  geom_text(aes(x = poles$x, y = poles$y, label = poles$label),
            family = poles$family,
            size = poles$size) +
  geom_text(aes(x = month$x, y = month$y, label = month$dec_label),
            family = month$family,
            size = month$size) +
  theme_nothing() +
  scale_x_continuous(expand=c(0,0)) +
  scale_y_continuous(expand=c(0,0)) +
  labs(x = NULL, y = NULL)


ggsave("dec_base.png", dec_base, width = 1792, height = 1024, units = "px")

dec_png <- image_read("dec_base.png")

#create maps
##jan
jan_n <- map_fetch(srs = "EPSG:3575",
                 taxonKey = tern,
                 basisOfRecord = c("HUMAN_OBSERVATION", "MACHINE_OBSERVATION"),
                 source = "adhoc",
                 month = 1,
                 style = "scaled.circles",
                 base_style = "gbif-light",
                 bin = "hex")

jan_s <- map_fetch(srs = "EPSG:3031",
                   taxonKey = tern,
                   basisOfRecord = c("HUMAN_OBSERVATION", "MACHINE_OBSERVATION"),
                   source = "adhoc",
                   month = 1,
                   style = "scaled.circles",
                   base_style = "gbif-light",
                   bin = "hex")

##feb
feb_n <- map_fetch(srs = "EPSG:3575",
                   taxonKey = tern,
                   basisOfRecord = c("HUMAN_OBSERVATION", "MACHINE_OBSERVATION"),
                   source = "adhoc",
                   month = 2,
                   style = "scaled.circles",
                   base_style = "gbif-light",
                   bin = "hex")

feb_s <- map_fetch(srs = "EPSG:3031",
                   taxonKey = tern,
                   basisOfRecord = c("HUMAN_OBSERVATION", "MACHINE_OBSERVATION"),
                   source = "adhoc",
                   month = 2,
                   style = "scaled.circles",
                   base_style = "gbif-light",
                   bin = "hex")

##mar
mar_n <- map_fetch(srs = "EPSG:3575",
                   taxonKey = tern,
                   basisOfRecord = c("HUMAN_OBSERVATION", "MACHINE_OBSERVATION"),
                   source = "adhoc",
                   month = 3,
                   style = "scaled.circles",
                   base_style = "gbif-light",
                   bin = "hex")

mar_s <- map_fetch(srs = "EPSG:3031",
                   taxonKey = tern,
                   basisOfRecord = c("HUMAN_OBSERVATION", "MACHINE_OBSERVATION"),
                   source = "adhoc",
                   month = 3,
                   style = "scaled.circles",
                   base_style = "gbif-light",
                   bin = "hex")

##apr
apr_n <- map_fetch(srs = "EPSG:3575",
                   taxonKey = tern,
                   basisOfRecord = c("HUMAN_OBSERVATION", "MACHINE_OBSERVATION"),
                   source = "adhoc",
                   month = 4,
                   style = "scaled.circles",
                   base_style = "gbif-light",
                   bin = "hex")

apr_s <- map_fetch(srs = "EPSG:3031",
                   taxonKey = tern,
                   basisOfRecord = c("HUMAN_OBSERVATION", "MACHINE_OBSERVATION"),
                   source = "adhoc",
                   month = 4,
                   style = "scaled.circles",
                   base_style = "gbif-light",
                   bin = "hex")

##may
may_n <- map_fetch(srs = "EPSG:3575",
                   taxonKey = tern,
                   basisOfRecord = c("HUMAN_OBSERVATION", "MACHINE_OBSERVATION"),
                   source = "adhoc",
                   month = 5,
                   style = "scaled.circles",
                   base_style = "gbif-light",
                   bin = "hex")

may_s <- map_fetch(srs = "EPSG:3031",
                   taxonKey = tern,
                   basisOfRecord = c("HUMAN_OBSERVATION", "MACHINE_OBSERVATION"),
                   source = "adhoc",
                   month = 5,
                   style = "scaled.circles",
                   base_style = "gbif-light",
                   bin = "hex")

##jun
jun_n <- map_fetch(srs = "EPSG:3575",
                   taxonKey = tern,
                   basisOfRecord = c("HUMAN_OBSERVATION", "MACHINE_OBSERVATION"),
                   source = "adhoc",
                   month = 6,
                   style = "scaled.circles",
                   base_style = "gbif-light",
                   bin = "hex")

jun_s <- map_fetch(srs = "EPSG:3031",
                   taxonKey = tern,
                   basisOfRecord = c("HUMAN_OBSERVATION", "MACHINE_OBSERVATION"),
                   source = "adhoc",
                   month = 6,
                   style = "scaled.circles",
                   base_style = "gbif-light",
                   bin = "hex")

##jul
jul_n <- map_fetch(srs = "EPSG:3575",
                   taxonKey = tern,
                   basisOfRecord = c("HUMAN_OBSERVATION", "MACHINE_OBSERVATION"),
                   source = "adhoc",
                   month = 7,
                   style = "scaled.circles",
                   base_style = "gbif-light",
                   bin = "hex")

jul_s <- map_fetch(srs = "EPSG:3031",
                   taxonKey = tern,
                   basisOfRecord = c("HUMAN_OBSERVATION", "MACHINE_OBSERVATION"),
                   source = "adhoc",
                   month = 7,
                   style = "scaled.circles",
                   base_style = "gbif-light",
                   bin = "hex")

##aug
aug_n <- map_fetch(srs = "EPSG:3575",
                   taxonKey = tern,
                   basisOfRecord = c("HUMAN_OBSERVATION", "MACHINE_OBSERVATION"),
                   source = "adhoc",
                   month = 8,
                   style = "scaled.circles",
                   base_style = "gbif-light",
                   bin = "hex")

aug_s <- map_fetch(srs = "EPSG:3031",
                   taxonKey = tern,
                   basisOfRecord = c("HUMAN_OBSERVATION", "MACHINE_OBSERVATION"),
                   source = "adhoc",
                   month = 8,
                   style = "scaled.circles",
                   base_style = "gbif-light",
                   bin = "hex")

##sep
sep_n <- map_fetch(srs = "EPSG:3575",
                   taxonKey = tern,
                   basisOfRecord = c("HUMAN_OBSERVATION", "MACHINE_OBSERVATION"),
                   source = "adhoc",
                   month = 9,
                   style = "scaled.circles",
                   base_style = "gbif-light",
                   bin = "hex")

sep_s <- map_fetch(srs = "EPSG:3031",
                   taxonKey = tern,
                   basisOfRecord = c("HUMAN_OBSERVATION", "MACHINE_OBSERVATION"),
                   source = "adhoc",
                   month = 9,
                   style = "scaled.circles",
                   base_style = "gbif-light",
                   bin = "hex")

##oct
oct_n <- map_fetch(srs = "EPSG:3575",
                   taxonKey = tern,
                   basisOfRecord = c("HUMAN_OBSERVATION", "MACHINE_OBSERVATION"),
                   source = "adhoc",
                   month = 10,
                   style = "scaled.circles",
                   base_style = "gbif-light",
                   bin = "hex")

oct_s <- map_fetch(srs = "EPSG:3031",
                   taxonKey = tern,
                   basisOfRecord = c("HUMAN_OBSERVATION", "MACHINE_OBSERVATION"),
                   source = "adhoc",
                   month = 10,
                   style = "scaled.circles",
                   base_style = "gbif-light",
                   bin = "hex")

##nov
nov_n <- map_fetch(srs = "EPSG:3575",
                   taxonKey = tern,
                   basisOfRecord = c("HUMAN_OBSERVATION", "MACHINE_OBSERVATION"),
                   source = "adhoc",
                   month = 11,
                   style = "scaled.circles",
                   base_style = "gbif-light",
                   bin = "hex")

nov_s <- map_fetch(srs = "EPSG:3031",
                   taxonKey = tern,
                   basisOfRecord = c("HUMAN_OBSERVATION", "MACHINE_OBSERVATION"),
                   source = "adhoc",
                   month = 11,
                   style = "scaled.circles",
                   base_style = "gbif-light",
                   bin = "hex")

##dec
dec_n <- map_fetch(srs = "EPSG:3575",
                   taxonKey = tern,
                   basisOfRecord = c("HUMAN_OBSERVATION", "MACHINE_OBSERVATION"),
                   source = "adhoc",
                   month = 12,
                   style = "scaled.circles",
                   base_style = "gbif-light",
                   bin = "hex")

dec_s <- map_fetch(srs = "EPSG:3031",
                   taxonKey = tern,
                   basisOfRecord = c("HUMAN_OBSERVATION", "MACHINE_OBSERVATION"),
                   source = "adhoc",
                   month = 12,
                   style = "scaled.circles",
                   base_style = "gbif-light",
                   bin = "hex")

#sitch maps and base together
jan_north <- image_composite(jan_png, jan_n, offset = "+256+256")
jan_final <- image_composite(jan_north, jan_s, offset = "+1024+256")

feb_north <- image_composite(feb_png, feb_n, offset = "+256+256")
feb_final <- image_composite(feb_north, feb_s, offset = "+1024+256")

mar_north <- image_composite(mar_png, mar_n, offset = "+256+256")
mar_final <- image_composite(mar_north, mar_s, offset = "+1024+256")

apr_north <- image_composite(apr_png,apr_n, offset = "+256+256")
apr_final <- image_composite(apr_north, apr_s, offset = "+1024+256")

may_north <- image_composite(may_png, may_n, offset = "+256+256")
may_final <- image_composite(may_north, may_s, offset = "+1024+256")

jun_north <- image_composite(jun_png, jun_n, offset = "+256+256")
jun_final <- image_composite(jun_north, jun_s, offset = "+1024+256")

jul_north <- image_composite(jul_png, jul_n, offset = "+256+256")
jul_final <- image_composite(jul_north, jul_s, offset = "+1024+256")

aug_north <- image_composite(aug_png, aug_n, offset = "+256+256")
aug_final <- image_composite(aug_north, aug_s, offset = "+1024+256")

sep_north <- image_composite(sep_png, sep_n, offset = "+256+256")
sep_final <- image_composite(sep_north, sep_s, offset = "+1024+256")

oct_north <- image_composite(oct_png, oct_n, offset = "+256+256")
oct_final <- image_composite(oct_north, oct_s, offset = "+1024+256")

nov_north <- image_composite(nov_png, nov_n, offset = "+256+256")
nov_final <- image_composite(nov_north, nov_s, offset = "+1024+256")

dec_north <- image_composite(dec_png, dec_n, offset = "+256+256")
dec_final <- image_composite(dec_north, dec_s, offset = "+1024+256")

#make .gif
year <- c(jan_final, feb_final, mar_final, apr_final, may_final, jun_final, jul_final, aug_final, sep_final, oct_final, nov_final, dec_final)
gif <- image_animate(year, fps = 2, optimize = TRUE)
image_write(gif, "terns.gif")
