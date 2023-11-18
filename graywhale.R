library(rgbif)
library(magick)

#Get gray whale taxonKey
gwhale <- name_backbone("Eschrichtius robustus")$usageKey

#Map aesthetics
basisOfRecord <- "HUMAN_OBSERVATION"
source <- "adhoc"
style <- "blue.marker"
bin <- "hex"
base_style <- "gbif-tuatara"
font1 <- "mono"
font2 <- "serif"
color <- "white"
size1 <- 15
size2 <- 10
location1 <- "+0+250"
location2 <- "+10+20"
location3 <- "+200+475"

#Generate maps for each month
jan <- 
  map_fetch(z = 1, x = 0, y = 0, 
            taxonKey = gwhale,
            month = 1,
            basisOfRecord = basisOfRecord,
            source = source,
            style = style,
            bin = bin,
            base_style = base_style) %>% 
  image_annotate("
  |Jan|
   Feb
   Mar
   Apr
   May
   Jun
   Jul
   Aug
   Sep
   Oct
   Nov
   Dec
                 ",
                 font = font1,
                 color = color,
                 size = size1,
                 location = location1) %>% 
  image_annotate("Visualizing one of the largest mammal\nmigrations on Earth through human observations.
                 
                 Gray Whales | Eschrichtius robustus",
                 font = font1,
                 style = "oblique",
                 color = color,
                 size = size1,
                 location = location2,
                 gravity = "northeast") %>% 
  image_annotate("gbif.org | {rgbif} | map_fetch() | {magick}",
                 font = font1,
                 color = color,
                 size = size2,
                 location = location3)

feb <- 
  map_fetch(z = 1, x = 0, y = 0, 
            taxonKey = gwhale,
            month = 2,
            basisOfRecord = basisOfRecord,
            source = source,
            style = style,
            bin = bin,
            base_style = base_style) %>% 
  image_annotate("
   Jan
  |Feb|
   Mar
   Apr
   May
   Jun
   Jul
   Aug
   Sep
   Oct
   Nov
   Dec
                 ",
                 font = font1,
                 color = color,
                 size = size1,
                 location = location1) %>% 
  image_annotate("Visualizing one of the largest mammal\nmigrations on Earth through human observations.
                 
                 Gray Whales | Eschrichtius robustus",
                 font = font1,
                 style = "oblique",
                 color = color,
                 size = size1,
                 location = location2,
                 gravity = "northeast") %>% 
  image_annotate("gbif.org | {rgbif} | map_fetch() | {magick}",
                 font = font1,
                 color = color,
                 size = size2,
                 location = location3)

mar <- 
  map_fetch(z = 1, x = 0, y = 0, 
            taxonKey = gwhale,
            month = 3,
            basisOfRecord = basisOfRecord,
            source = source,
            style = style,
            bin = bin,
            base_style = base_style) %>% 
  image_annotate("
   Jan
   Feb
  |Mar|
   Apr
   May
   Jun
   Jul
   Aug
   Sep
   Oct
   Nov
   Dec
                 ",
                 font = font1,
                 color = color,
                 size = size1,
                 location = location1) %>% 
  image_annotate("Visualizing one of the largest mammal\nmigrations on Earth through human observations.
                 
                 Gray Whales | Eschrichtius robustus",
                 font = font1,
                 style = "oblique",
                 color = color,
                 size = size1,
                 location = location2,
                 gravity = "northeast") %>% 
  image_annotate("gbif.org | {rgbif} | map_fetch() | {magick}",
                 font = font1,
                 color = color,
                 size = size2,
                 location = location3)

apr <- 
  map_fetch(z = 1, x = 0, y = 0, 
            taxonKey = gwhale,
            month = 4,
            basisOfRecord = basisOfRecord,
            source = source,
            style = style,
            bin = bin,
            base_style = base_style) %>% 
  image_annotate("
   Jan 
   Feb
   Mar
  |Apr|
   May
   Jun
   Jul
   Aug
   Sep
   Oct
   Nov
   Dec
                 ",
                 font = font1,
                 color = color,
                 size = size1,
                 location = location1) %>% 
  image_annotate("Visualizing one of the largest mammal\nmigrations on Earth through human observations.
                 
                 Gray Whales | Eschrichtius robustus",
                 font = font1,
                 style = "oblique",
                 color = color,
                 size = size1,
                 location = location2,
                 gravity = "northeast") %>% 
  image_annotate("gbif.org | {rgbif} | map_fetch() | {magick}",
                 font = font1,
                 color = color,
                 size = size2,
                 location = location3)

may <- 
  map_fetch(z = 1, x = 0, y = 0, 
            taxonKey = gwhale,
            month = 5,
            basisOfRecord = basisOfRecord,
            source = source,
            style = style,
            bin = bin,
            base_style = base_style) %>% 
  image_annotate("
   Jan
   Feb
   Mar
   Apr
  |May|
   Jun
   Jul
   Aug
   Sep
   Oct
   Nov
   Dec
                 ",
                 font = font1,
                 color = color,
                 size = size1,
                 location = location1) %>% 
  image_annotate("Visualizing one of the largest mammal\nmigrations on Earth through human observations.
                 
                 Gray Whales | Eschrichtius robustus",
                 font = font1,
                 style = "oblique",
                 color = color,
                 size = size1,
                 location = location2,
                 gravity = "northeast") %>% 
  image_annotate("gbif.org | {rgbif} | map_fetch() | {magick}",
                 font = font1,
                 color = color,
                 size = size2,
                 location = location3)

jun <- 
  map_fetch(z = 1, x = 0, y = 0, 
            taxonKey = gwhale,
            month = 6,
            basisOfRecord = basisOfRecord,
            source = source,
            style = style,
            bin = bin,
            base_style = base_style) %>% 
  image_annotate("
   Jan
   Feb
   Mar
   Apr
   May
  |Jun|
   Jul
   Aug
   Sep
   Oct
   Nov
   Dec
                 ",
                 font = font1,
                 color = color,
                 size = size1,
                 location = location1) %>% 
  image_annotate("Visualizing one of the largest mammal\nmigrations on Earth through human observations.
                 
                 Gray Whales | Eschrichtius robustus",
                 font = font1,
                 style = "oblique",
                 color = color,
                 size = size1,
                 location = location2,
                 gravity = "northeast") %>% 
  image_annotate("gbif.org | {rgbif} | map_fetch() | {magick}",
                 font = font1,
                 color = color,
                 size = size2,
                 location = location3)

jul <- 
  map_fetch(z = 1, x = 0, y = 0, 
            taxonKey = gwhale,
            month = 7,
            basisOfRecord = basisOfRecord,
            source = source,
            style = style,
            bin = bin,
            base_style = base_style) %>% 
  image_annotate("
   Jan
   Feb
   Mar
   Apr
   May
   Jun
  |Jul|
   Aug
   Sep
   Oct
   Nov
   Dec
                 ",
                 font = font1,
                 color = color,
                 size = size1,
                 location = location1) %>% 
  image_annotate("Visualizing one of the largest mammal\nmigrations on Earth through human observations.
                 
                 Gray Whales | Eschrichtius robustus",
                 font = font1,
                 style = "oblique",
                 color = color,
                 size = size1,
                 location = location2,
                 gravity = "northeast") %>% 
  image_annotate("gbif.org | {rgbif} | map_fetch() | {magick}",
                 font = font1,
                 color = color,
                 size = size2,
                 location = location3)

aug <- 
  map_fetch(z = 1, x = 0, y = 0, 
            taxonKey = gwhale,
            month = 8,
            basisOfRecord = basisOfRecord,
            source = source,
            style = style,
            bin = bin,
            base_style = base_style) %>% 
  image_annotate("
   Jan
   Feb
   Mar
   Apr
   May
   Jun
   Jul
  |Aug|
   Sep
   Oct
   Nov
   Dec
                 ",
                 font = font1,
                 color = color,
                 size = size1,
                 location = location1) %>% 
  image_annotate("Visualizing one of the largest mammal\nmigrations on Earth through human observations.
                 
                 Gray Whales | Eschrichtius robustus",
                 font = font1,
                 style = "oblique",
                 color = color,
                 size = size1,
                 location = location2,
                 gravity = "northeast") %>% 
  image_annotate("gbif.org | {rgbif} | map_fetch() | {magick}",
                 font = font1,
                 color = color,
                 size = size2,
                 location = location3)

sep <- 
  map_fetch(z = 1, x = 0, y = 0, 
            taxonKey = gwhale,
            month = 9,
            basisOfRecord = basisOfRecord,
            source = source,
            style = style,
            bin = bin,
            base_style = base_style) %>% 
  image_annotate("
   Jan
   Feb
   Mar
   Apr
   May
   Jun
   Jul
   Aug
  |Sep|
   Oct
   Nov
   Dec
                 ",
                 font = font1,
                 color = color,
                 size = size1,
                 location = location1) %>% 
  image_annotate("Visualizing one of the largest mammal\nmigrations on Earth through human observations.
                 
                 Gray Whales | Eschrichtius robustus",
                 font = font1,
                 style = "oblique",
                 color = color,
                 size = size1,
                 location = location2,
                 gravity = "northeast") %>% 
  image_annotate("gbif.org | {rgbif} | map_fetch() | {magick}",
                 font = font1,
                 color = color,
                 size = size2,
                 location = location3)

oct <- 
  map_fetch(z = 1, x = 0, y = 0, 
            taxonKey = gwhale,
            month = 10,
            basisOfRecord = basisOfRecord,
            source = source,
            style = style,
            bin = bin,
            base_style = base_style) %>% 
  image_annotate("
   Jan
   Feb
   Mar
   Apr
   May
   Jun
   Jul
   Aug
   Sep
  |Oct|
   Nov
   Dec
                 ",
                 font = font1,
                 color = color,
                 size = size1,
                 location = location1) %>% 
  image_annotate("Visualizing one of the largest mammal\nmigrations on Earth through human observations.
                 
                 Gray Whales | Eschrichtius robustus",
                 font = font1,
                 style = "oblique",
                 color = color,
                 size = size1,
                 location = location2,
                 gravity = "northeast") %>% 
  image_annotate("gbif.org | {rgbif} | map_fetch() | {magick}",
                 font = font1,
                 color = color,
                 size = size2,
                 location = location3)

nov <- 
  map_fetch(z = 1, x = 0, y = 0, 
            taxonKey = gwhale,
            month = 11,
            basisOfRecord = basisOfRecord,
            source = source,
            style = style,
            bin = bin,
            base_style = base_style) %>% 
  image_annotate("
   Jan
   Feb
   Mar
   Apr
   May
   Jun
   Jul
   Aug
   Sep
   Oct
  |Nov|
   Dec
                 ",
                 font = font1,
                 color = color,
                 size = size1,
                 location = location1) %>% 
  image_annotate("Visualizing one of the largest mammal\nmigrations on Earth through human observations.
                 
                 Gray Whales | Eschrichtius robustus",
                 font = font1,
                 style = "oblique",
                 color = color,
                 size = size1,
                 location = location2,
                 gravity = "northeast") %>% 
  image_annotate("gbif.org | {rgbif} | map_fetch() | {magick}",
                 font = font1,
                 color = color,
                 size = size2,
                 location = location3)

dec <- 
  map_fetch(z = 1, x = 0, y = 0, 
            taxonKey = gwhale,
            month = 12,
            basisOfRecord = basisOfRecord,
            source = source,
            style = style,
            bin = bin,
            base_style = base_style) %>% 
  image_annotate("
   Jan
   Feb
   Mar
   Apr
   May
   Jun
   Jul
   Aug
   Sep
   Oct
   Nov
  |Dec|
                 ",
                 font = font1,
                 color = color,
                 size = size1,
                 location = location1) %>% 
  image_annotate("Visualizing one of the largest mammal\nmigrations on Earth through human observations.
                 
                 Gray Whales | Eschrichtius robustus",
                 font = font1,
                 style = "oblique",
                 color = color,
                 size = size1,
                 location = location2,
                 gravity = "northeast") %>% 
  image_annotate("gbif.org | {rgbif} | map_fetch() | {magick}",
                 font = font1,
                 color = color,
                 size = size2,
                 location = location3)

#Group maps
year <- c(jan, feb, mar, apr, may, jun, jul, aug, sep, oct, nov, dec)

#Create and save .gif
gif <- image_resize(year, '600') %>%
  image_animate(fps = 2, optimize = TRUE)

image_write(gif, "graywhale.gif")
