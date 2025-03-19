Sys.setlocale(locale = "fr_FR.UTF-8")

library(lubridate)
library(dplyr)
library(openxlsx)



calendrier <- tibble(jour_date = seq(as.Date(jour_debut), as.Date(jour_fin), by = 1)) 

calendrier <- calendrier %>% 
  mutate(annee = year(jour_date),
         mois_int = month(jour_date),
         mois_2car = sprintf('%02d', month(jour_date)), 
         jour_label = wday(jour_date, week_start = 1, label = TRUE, abbr = FALSE),
         mois_label = month(jour_date, label = TRUE, abbr = FALSE)) %>% 
  tidyr::unite(mois_label, mois_2car, mois_label, sep = " - ")


openxlsx::write.xlsx(calendrier, here::here('data_in/calendrier_complet.xlsx'))

