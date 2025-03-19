

calendrier <- readxl::read_excel('data_in/calendrier_complet.xlsx')



# annee_i <- 2015L
# mois_i <- '01 - janvier'


exporter_an_mois <- function(annee_i, mois_i) {
  
  dir.create(file.path('data_out', annee_i), showWarnings = FALSE)
  dir.create(file.path('data_out', annee_i, mois_i), showWarnings = FALSE)
  
  sous_calendrier <- calendrier %>% 
    filter(annee == annee_i, mois_label == mois_i) 
  
  sous_calendrier %>% 
    pull(jour_date) %>% 
    purrr::map_chr(function(x){
      out_file <- file.path('data_out', annee_i, mois_i, paste0(format(x, '%Y-%m-%d'), '.xlsx'))
      openxlsx::write.xlsx(
        sous_calendrier %>% 
          filter(jour_date == x), out_file
      )
      return(out_file)
    }
    )
  
}

liste_an_mois <- calendrier %>% 
  distinct(annee, mois_label) %>% 
  # group_by(annee) %>% 
  reframe(params = list(annee_i = annee, mois_i = mois_label)) %>% 
  pull(params)

purrr::map2(liste_an_mois$annee_i, liste_an_mois$mois_i, exporter_an_mois)
