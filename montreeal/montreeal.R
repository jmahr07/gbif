#Libraries
library(tidyverse)
library(rgbif)
library(patchwork)

#Data
trees <- occ_download_get("0059247-231002084531237") %>%
  occ_download_import()

#To download the most recent vascular plant data,
#download directly from gbif with the following 
#(gbif credentials necessary):

##Get vascular plant phylum key
###phylumKey <- name_backbone("Tracheophyta")$phylumKey

##Request download and get data
###data <- occ_download(pred_default(),
                     ###pred("phylumKey", phylumKey),
                     ###pred("gadm", "CAN.11.20_1"),
                     ###format = "SIMPLE_CSV")

###trees <- occ_download_get(data) %>%
  ###occ_download_import()

#Filter for tree genus
ashes <- trees %>% filter(genus == "Fraxinus")
maples <- trees %>% filter(genus == "Acer")
poplars <- trees %>% filter(genus == "Populus")
basswood <- trees %>% filter(genus == "Tilia")
willows <- trees %>% filter(genus == "Salix")
birches <- trees %>% filter(genus == "Betula")
oaks <- trees %>% filter(genus == "Quercus")
elms <- trees %>% filter(genus == "Ulmus")

#Aesthetics
aes <- tibble(all_color = "lightgrey",
              all_alpha = 0.1,
              highlight_alpha = 1,
              contour_geom = "polygon",
              contour_var = "density",
              contour_n = 300,
              contour_binwidth = 20,
              contour_color = "white",
              contour_size = 0.15,
              ash_color = "#B33E25",
              maple_color = "#BC6C25",
              poplar_color = "#FFD042",
              basswood_color = "#61A444",
              willow_color = "#499b73",
              birch_color = "#3e99b3",
              oak_color = "#6c84bf",
              elm_color = "#836cbf",
              plot_fill = "black",
              family = "Candara",
              bold = "bold",
              italic = "italic",
              name_size = 5,
              genus_size = 4.5,
              n_size = 3)

#PLOTS
##Ashes
ash_plot <- 
  ggplot() +
  geom_point(data = subset(trees, genus =! "Fraxinus"), 
             aes(decimalLongitude, decimalLatitude), 
             color = aes$all_color,
             alpha = aes$all_alpha) +
  geom_point(data = ashes, 
             aes(decimalLongitude, decimalLatitude), 
             color = aes$ash_color, 
             alpha = aes$highlight_alpha) +
  stat_density_2d(data = ashes,
                  aes(decimalLongitude, decimalLatitude, alpha = after_stat(level)),
                  geom = aes$contour_geom, 
                  contour = TRUE, 
                  contour_var = aes$contour_var,
                  n = aes$contour_n,
                  binwidth = aes$contour_binwidth, 
                  color = aes$contour_color, 
                  size = aes$contour_size, 
                  fill = aes$ash_color, 
                  show.legend = FALSE) +
  geom_text(aes(x = -73.88, y = 45.68, label = "Ashes"),
            color = aes$ash_color,
            family = aes$family,
            fontface = aes$bold,
            size = aes$name_size,
            hjust = 0) +
  geom_text(aes(x = -73.88, y = 45.66, label = "Fraxinus"),
            color = aes$ash_color,
            family = aes$family,
            fontface = aes$italic,
            size = aes$genus_size,
            hjust = 0) +
  geom_text(aes(x = -73.88, y = 45.64, label = "n = 268"),
            color = aes$ash_color,
            family = aes$family,
            size = aes$n_size,
            hjust = 0) +
  coord_quickmap() +
  theme_void() +
  theme(plot.background = element_rect(fill = aes$plot_fill))

##Maples
maple_plot <- 
ggplot() +
  geom_point(data = subset(trees, genus =! "Acer"), 
             aes(decimalLongitude, decimalLatitude), 
             color = aes$all_color,
             alpha = aes$all_alpha) +
  geom_point(data = maples, 
             aes(decimalLongitude, decimalLatitude), 
             color = aes$maple_color, 
             alpha = aes$highlight_alpha) +
  stat_density_2d(data = maples,
                  aes(decimalLongitude, decimalLatitude, alpha = after_stat(level)),
                  geom = aes$contour_geom, 
                  contour = TRUE, 
                  contour_var = aes$contour_var,
                  n = aes$contour_n,
                  binwidth = aes$contour_binwidth, 
                  color = aes$contour_color, 
                  size = aes$contour_size, 
                  fill = aes$maple_color, 
                  show.legend = FALSE) +
  geom_text(aes(x = -73.88, y = 45.68, label = "Maples"),
            color = aes$maple_color,
            family = aes$family,
            fontface = aes$bold,
            size = aes$name_size,
            hjust = 0) +
  geom_text(aes(x = -73.88, y = 45.66, label = "Acer"),
            color = aes$maple_color,
            family = aes$family,
            fontface = aes$italic,
            size = aes$genus_size,
            hjust = 0) +
  geom_text(aes(x = -73.88, y = 45.64, label = "n = 1874"),
            color = aes$maple_color,
            family = aes$family,
            size = aes$n_size,
            hjust = 0) +
  coord_quickmap() +
  theme_void() +
  theme(plot.background = element_rect(fill = aes$plot_fill))

##Poplars
poplar_plot <- 
  ggplot() +
  geom_point(data = subset(trees, genus =! "Populus"), 
             aes(decimalLongitude, decimalLatitude), 
             color = aes$all_color,
             alpha = aes$all_alpha) +
  geom_point(data = poplars, 
             aes(decimalLongitude, decimalLatitude), 
             color = aes$poplar_color, 
             alpha = aes$highlight_alpha) +
  stat_density_2d(data = poplars,
                  aes(decimalLongitude, decimalLatitude, alpha = after_stat(level)),
                  geom = aes$contour_geom, 
                  contour = TRUE, 
                  contour_var = aes$contour_var,
                  n = aes$contour_n,
                  binwidth = aes$contour_binwidth, 
                  color = aes$contour_color, 
                  size = aes$contour_size, 
                  fill = aes$poplar_color, 
                  show.legend = FALSE) +
  geom_text(aes(x = -73.88, y = 45.68, label = "Poplars"),
            color = aes$poplar_color,
            family = aes$family,
            fontface = aes$bold,
            size = aes$name_size,
            hjust = 0) +
  geom_text(aes(x = -73.88, y = 45.66, label = "Populus"),
            color = aes$poplar_color,
            family = aes$family,
            fontface = aes$italic,
            size = aes$genus_size,
            hjust = 0) +
  geom_text(aes(x = -73.88, y = 45.64, label = "n = 872"),
            color = aes$poplar_color,
            family = aes$family,
            size = aes$n_size,
            hjust = 0) +
  coord_quickmap() +
  theme_void() +
  theme(plot.background = element_rect(fill = aes$plot_fill))

#Basswood
basswood_plot <- 
  ggplot() +
  geom_point(data = subset(trees, genus =! "Tilia"), 
             aes(decimalLongitude, decimalLatitude), 
             color = aes$all_color,
             alpha = aes$all_alpha) +
  geom_point(data = basswood, 
             aes(decimalLongitude, decimalLatitude), 
             color = aes$basswood_color, 
             alpha = aes$highlight_alpha) +
  stat_density_2d(data = basswood,
                  aes(decimalLongitude, decimalLatitude, alpha = after_stat(level)),
                  geom = aes$contour_geom, 
                  contour = TRUE, 
                  contour_var = aes$contour_var,
                  n = aes$contour_n,
                  binwidth = aes$contour_binwidth, 
                  color = aes$contour_color, 
                  size = aes$contour_size, 
                  fill = aes$basswood_color, 
                  show.legend = FALSE) +
  geom_text(aes(x = -73.88, y = 45.68, label = "Basswoods"),
            color = aes$basswood_color,
            family = aes$family,
            fontface = aes$bold,
            size = aes$name_size,
            hjust = 0) +
  geom_text(aes(x = -73.88, y = 45.66, label = "Tilia"),
            color = aes$basswood_color,
            family = aes$family,
            fontface = aes$italic,
            size = aes$genus_size,
            hjust = 0) +
  geom_text(aes(x = -73.88, y = 45.64, label = "n = 362"),
            color = aes$basswood_color,
            family = aes$family,
            size = aes$n_size,
            hjust = 0) +
  coord_quickmap() +
  theme_void() +
  theme(plot.background = element_rect(fill = aes$plot_fill))

#Willows
willow_plot <- 
  ggplot() +
  geom_point(data = subset(trees, genus =! "Salix"), 
             aes(decimalLongitude, decimalLatitude), 
             color = aes$all_color,
             alpha = aes$all_alpha) +
  geom_point(data = willows, 
             aes(decimalLongitude, decimalLatitude), 
             color = aes$willow_color, 
             alpha = aes$highlight_alpha) +
  stat_density_2d(data = willows,
                  aes(decimalLongitude, decimalLatitude, alpha = after_stat(level)),
                  geom = aes$contour_geom, 
                  contour = TRUE, 
                  contour_var = aes$contour_var,
                  n = aes$contour_n,
                  binwidth = aes$contour_binwidth, 
                  color = aes$contour_color, 
                  size = aes$contour_size, 
                  fill = aes$willow_color, 
                  show.legend = FALSE) +
  geom_text(aes(x = -73.88, y = 45.68, label = "Willows"),
            color = aes$willow_color,
            family = aes$family,
            fontface = aes$bold,
            size = aes$name_size,
            hjust = 0) +
  geom_text(aes(x = -73.88, y = 45.66, label = "Salix"),
            color = aes$willow_color,
            family = aes$family,
            fontface = aes$italic,
            size = aes$genus_size,
            hjust = 0) +
  geom_text(aes(x = -73.88, y = 45.64, label = "n = 252"),
            color = aes$willow_color,
            family = aes$family,
            size = aes$n_size,
            hjust = 0) +
  coord_quickmap() +
  theme_void() +
  theme(plot.background = element_rect(fill = aes$plot_fill))

#Birches
birch_plot <- 
  ggplot() +
  geom_point(data = subset(trees, genus =! "Betula"), 
             aes(decimalLongitude, decimalLatitude), 
             color = aes$all_color,
             alpha = aes$all_alpha) +
  geom_point(data = birches, 
             aes(decimalLongitude, decimalLatitude), 
             color = aes$birch_color, 
             alpha = aes$highlight_alpha) +
  stat_density_2d(data = birches,
                  aes(decimalLongitude, decimalLatitude, alpha = after_stat(level)),
                  geom = aes$contour_geom, 
                  contour = TRUE, 
                  contour_var = aes$contour_var,
                  n = aes$contour_n,
                  binwidth = aes$contour_binwidth, 
                  color = aes$contour_color, 
                  size = aes$contour_size, 
                  fill = aes$birch_color, 
                  show.legend = FALSE) +
  geom_text(aes(x = -73.88, y = 45.68, label = "Birches"),
            color = aes$birch_color,
            family = aes$family,
            fontface = aes$bold,
            size = aes$name_size,
            hjust = 0) +
  geom_text(aes(x = -73.88, y = 45.66, label = "Betula"),
            color = aes$birch_color,
            family = aes$family,
            fontface = aes$italic,
            size = aes$genus_size,
            hjust = 0) +
  geom_text(aes(x = -73.88, y = 45.64, label = "n = 214"),
            color = aes$birch_color,
            family = aes$family,
            size = aes$n_size,
            hjust = 0) +
  coord_quickmap() +
  theme_void() +
  theme(plot.background = element_rect(fill = aes$plot_fill))

#Oaks
oak_plot <- 
  ggplot() +
  geom_point(data = subset(trees, genus =! "Quercus"), 
             aes(decimalLongitude, decimalLatitude), 
             color = aes$all_color,
             alpha = aes$all_alpha) +
  geom_point(data = oaks, 
             aes(decimalLongitude, decimalLatitude), 
             color = aes$oak_color, 
             alpha = aes$highlight_alpha) +
  stat_density_2d(data = oaks,
                  aes(decimalLongitude, decimalLatitude, alpha = after_stat(level)),
                  geom = aes$contour_geom, 
                  contour = TRUE, 
                  contour_var = aes$contour_var,
                  n = aes$contour_n,
                  binwidth = aes$contour_binwidth, 
                  color = aes$contour_color, 
                  size = aes$contour_size, 
                  fill = aes$oak_color, 
                  show.legend = FALSE) +
  geom_text(aes(x = -73.88, y = 45.68, label = "Oaks"),
            color = aes$oak_color,
            family = aes$family,
            fontface = aes$bold,
            size = aes$name_size,
            hjust = 0) +
  geom_text(aes(x = -73.88, y = 45.66, label = "Quercus"),
            color = aes$oak_color,
            family = aes$family,
            fontface = aes$italic,
            size = aes$genus_size,
            hjust = 0) +
  geom_text(aes(x = -73.88, y = 45.64, label = "n = 577"),
            color = aes$oak_color,
            family = aes$family,
            size = aes$n_size,
            hjust = 0) +
  coord_quickmap() +
  theme_void() +
  theme(plot.background = element_rect(fill = aes$plot_fill))

#Elms
elm_plot <- 
  ggplot() +
  geom_point(data = subset(trees, genus =! "Ulmus"), 
             aes(decimalLongitude, decimalLatitude), 
             color = aes$all_color,
             alpha = aes$all_alpha) +
  geom_point(data = elms, 
             aes(decimalLongitude, decimalLatitude), 
             color = aes$elm_color, 
             alpha = aes$highlight_alpha) +
  stat_density_2d(data = elms,
                  aes(decimalLongitude, decimalLatitude, alpha = after_stat(level)),
                  geom = aes$contour_geom, 
                  contour = TRUE, 
                  contour_var = aes$contour_var,
                  n = aes$contour_n,
                  binwidth = aes$contour_binwidth, 
                  color = aes$contour_color, 
                  size = aes$contour_size, 
                  fill = aes$elm_color, 
                  show.legend = FALSE) +
  geom_text(aes(x = -73.88, y = 45.68, label = "Elms"),
            color = aes$elm_color,
            family = aes$family,
            fontface = aes$bold,
            size = aes$name_size,
            hjust = 0) +
  geom_text(aes(x = -73.88, y = 45.66, label = "Ulmus"),
            color = aes$elm_color,
            family = aes$family,
            fontface = aes$italic,
            size = aes$genus_size,
            hjust = 0) +
  geom_text(aes(x = -73.88, y = 45.64, label = "n = 525"),
            color = aes$elm_color,
            family = aes$family,
            size = aes$n_size,
            hjust = 0) +
  coord_quickmap() +
  theme_void() +
  theme(plot.background = element_rect(fill = aes$plot_fill))

#Title
title <-  
ggplot() +
  geom_text(aes(x = 0, y = 6.5, label = "Mon[tree]al"), 
            color = "white",
            family = "Candara",
            fontface = "bold",
            size = 10,
            vjust = 0) +
  geom_text(aes(x = 0, y = 2, label = "Broadleaf tree distribution\nby genus across the island"), 
            color = "white",
            family = "Candara",
            fontface = "italic",
            lineheight = 1,
            size = 5) +
  geom_text(aes(x = 0, y = -1.9, label = "Grey points represent unique observations of all vascular
plants (n = 41,918), colored points represent observations
for selected genera. Contour binwidth = 20 for all genera.
  
Data: GBIF.org (14 November 2023) 
GBIF Occurrence Download https://doi.org/10.15468/dl.x4sec3"),
            lineheight = 1,
            color = "white",
            family = "Candara",
            size = 2.5,
            vjust = 1) +
  xlim(-10,10) +
  ylim(-10,10) +
  theme_void() +
  theme(plot.background = element_rect(aes$plot_fill))

#Layout for patchwork
layout <- "
ABC
DEF
GHI
"

#Patchwork
final <- 
ash_plot + maple_plot + poplar_plot + 
  basswood_plot + title + willow_plot +
  birch_plot + oak_plot + elm_plot +
  plot_layout(design = layout,
              theme(plot.background = element_rect(fill = aes$plot_fill))) &
  theme(plot.background = element_rect(color = aes$plot_fill,
                                       fill = aes$plot_fill),
        plot.margin = margin(0.1, 0.1, 0.1, 0.1, "in"))

#Save
ggsave("montreeal.png", plot = final, width = 10, height = 9, units = "in", dpi = 500)
                  
