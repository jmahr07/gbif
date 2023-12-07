# Broadleaf Tree Distribution Across Montreal
**Created:: 2023-11-17**

![A visual with eight maps of the island of Montreal. Each map is composed of gray dots, identifying observations of all vascular plants across the island. Specific dots are highlighted in a unique color on each map to identify different broadleaf tree genera, and contours are drawn around the observation to locate high density populations of each tree.](./montreeal.png)

###### Packages: [`rgbif`](https://github.com/ropensci/rgbif) | [`tidyverse` & `ggplot`](https://github.com/tidyverse) |  [`patchwork`](https://github.com/thomasp85/patchwork/tree/main)
###### Code:: [montreeal.R](./montreeal.R)
###### Other Links: [GBIF](https://www.gbif.org) | [Download the Data](./[0059247-231002084531237.zip](https://github.com/jmahr07/gbif/blob/main/montreeal/0059247-231002084531237.zip "0059247-231002084531237.zip"))

___
## Some Thoughts
This was my first project leveraging the `rgbif` package and making use of its data download capabilities. 

Running the code with the data from the .zip file will generate identical maps. The data can be imported into r using `rgbif`'s `occ_download` commands:

``` r
trees <- occ_download_get("0059247-231002084531237") %>%
  occ_download_import()
```

Alternatively, data can be downloaded directly from GBIF to produce more up-to-date maps:

``` r
#Get vascular plant phylum key
phylumKey <- name_backbone("Tracheophyta")$phylumKey

#Request download and get data
data <- occ_download(pred_default(),
                     pred("phylumKey", phylumKey),
                     pred("gadm", "CAN.11.20_1"),
                     format = "SIMPLE_CSV")

trees <- occ_download_get(data) %>%
  occ_download_import()
```

Note that accessing data through `rgbif` and `occ_download` requires GBIF credentials. Find instructions on saving them to your `.Renvion` file [here](https://docs.ropensci.org/rgbif/articles/gbif_credentials.html). 

Otherwise, this was a basic data visualization project, relying on `ggplot` to create maps for key broadleaf tree genera, as well as a "title" plot, and then combining them with `patchwork`.