

library(magrittr)

list.files('data_in', full.names = TRUE) %>% 
  unlink(recursive = TRUE)

list.files('data_out', full.names = TRUE) %>% 
  unlink(recursive = TRUE)

