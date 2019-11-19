rm(list = ls()); gc(); gc()

options(bitmapType='cairo')
options(scipen = 999)

library(magrittr)
# library(VennDiagram)
library(venneuler)

wd <- "C:/github/UK_venn_diagram"
setwd(wd)


# https://rstudio-pubs-static.s3.amazonaws.com/13301_6641d73cfac741a59c0a851feb99e98b.html
# gplots: http://rstudio-pubs-static.s3.amazonaws.com/7700_308716400c694486994b6e8c4e5f451c.html
# https://www.facebook.com/photo.php?fbid=10153445493968239&set=a.27870483238.35463.628883238&type=3
# https://stackoverflow.com/questions/32440128/nice-looking-five-sets-venn-diagrams
# https://cran.r-project.org/web/packages/ggVennDiagram/index.html



venn <- as.data.frame(rbind(
  c("England", 1 ,1, 1, 1, 0),
  c("Scotland", 1 ,1, 1, 1, 0),
  c("Wales", 1 ,1, 1, 1, 0),
  c("Northern Ireland", 1, 1, 1, 0, 1),
  c("Isle of Man", 1, 1, 0, 0, 0),
  c("Jersey", 1, 1, 0, 0, 0),
  c("Guernsey", 1, 1, 0, 0, 0),
  c("Ireland (State)", 1, 0, 0, 0, 1)
), stringsAsFactors = FALSE) %>% 
  setNames(c("country" ,"British Isles", "British Islands", "United Kingdom", "Great Britain", "Ireland (Island)"))
