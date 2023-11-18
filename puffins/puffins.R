library(rgbif)
library(magick)

#Get taxonKey for Puffins
taxonKey <- name_backbone("Fratercula arctica")$usageKey

#Map aesthetics
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

#Create maps
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

feb <-
  map_fetch(z = z, x = x, y = y, 
            taxonKey = taxonKey, 
            month = 2,
            basisOfRecord = basisOfRecord,
            source = source,
            style = style, 
            base_style = base_style)  %>% 
  image_annotate(" J [F] M  A  M  J  J  A  S  O  N  D ", 
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

mar <-
  map_fetch(z = z, x = x, y = y, 
            taxonKey = taxonKey, 
            month = 3,
            basisOfRecord = basisOfRecord,
            source = source,
            style = style, 
            base_style = base_style)  %>% 
  image_annotate(" J  F [M] A  M  J  J  A  S  O  N  D ", 
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

apr <-
  map_fetch(z = z, x = x, y = y, 
            taxonKey = taxonKey, 
            month = 4,
            basisOfRecord = basisOfRecord,
            source = source,
            style = style, 
            base_style = base_style)  %>% 
  image_annotate(" J  F  M [A] M  J  J  A  S  O  N  D ", 
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

may <-
  map_fetch(z = z, x = x, y = y, 
            taxonKey = taxonKey, 
            month = 5,
            basisOfRecord = basisOfRecord,
            source = source,
            style = style, 
            base_style = base_style)  %>% 
  image_annotate(" J  F  M  A [M] J  J  A  S  O  N  D ", 
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

jun <-
  map_fetch(z = z, x = x, y = y, 
            taxonKey = taxonKey, 
            month = 6,
            basisOfRecord = basisOfRecord,
            source = source,
            style = style, 
            base_style = base_style)  %>% 
  image_annotate(" J  F  M  A  M [J] J  A  S  O  N  D ", 
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

jul <-
  map_fetch(z = z, x = x, y = y, 
            taxonKey = taxonKey, 
            month = 7,
            basisOfRecord = basisOfRecord,
            source = source,
            style = style, 
            base_style = base_style)  %>% 
  image_annotate(" J  F  M  A  M  J [J] A  S  O  N  D ", 
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

aug <-
  map_fetch(z = z, x = x, y = y, 
            taxonKey = taxonKey, 
            month = 8,
            basisOfRecord = basisOfRecord,
            source = source,
            style = style, 
            base_style = base_style)  %>% 
  image_annotate(" J  F  M  A  M  J  J [A] S  O  N  D ", 
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

sep <-
  map_fetch(z = z, x = x, y = y, 
            taxonKey = taxonKey, 
            month = 9,
            basisOfRecord = basisOfRecord,
            source = source,
            style = style, 
            base_style = base_style)  %>% 
  image_annotate(" J  F  M  A  M  J  J  A [S] O  N  D ", 
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

oct <-
  map_fetch(z = z, x = x, y = y, 
            taxonKey = taxonKey, 
            month = 10,
            basisOfRecord = basisOfRecord,
            source = source,
            style = style, 
            base_style = base_style)  %>% 
  image_annotate(" J  F  M  A  M  J  J  A  S [O] N  D ", 
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

nov <-
  map_fetch(z = z, x = x, y = y, 
            taxonKey = taxonKey, 
            month = 11,
            basisOfRecord = basisOfRecord,
            source = source,
            style = style, 
            base_style = base_style)  %>% 
  image_annotate(" J  F  M  A  M  J  J  A  S  O [N] D ", 
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

dec <-
  map_fetch(z = z, x = x, y = y, 
            taxonKey = taxonKey, 
            month = 12,
            basisOfRecord = basisOfRecord,
            source = source,
            style = style, 
            base_style = base_style)  %>% 
  image_annotate(" J  F  M  A  M  J  J  A  S  O  N [D]", 
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

#Group maps
year <- c(jan, feb, mar, apr, may, jun, jul, aug, sep, oct, nov, dec)

#Create and save .gif
gif <- image_resize(year, '900') %>%
  image_morph() %>% 
  image_animate(fps = 5, optimize = TRUE)

image_write(gif, "puffins.gif")
