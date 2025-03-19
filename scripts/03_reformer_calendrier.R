



liste_fichiers_xlsx <- list.files('data_out', 
                                  recursive = TRUE, 
                                  pattern = ".xlsx",
                                  full.names = TRUE)


calendrier_final <- liste_fichiers_xlsx %>% 
  purrr::map_df(
    readxl::read_excel
  )
