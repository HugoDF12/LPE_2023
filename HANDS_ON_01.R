
# SCRPT + STUDENT INFO ----------------------------------------------------

  # NOMBRE: Hugo De Francisco Benito
  # EXP:22152945
  # TEMA: HANDS_ON_01

# LOADING LIBRARIES -------------------------------------------------------
  
  install.packages (c("tidyverse","dplyr","janitor"))
  library("dplyr","janitor","readr")

# LOADING DATA ------------------------------------------------------------

  exp_22152945<-jsonlite::fromJSON("https://sedeaplicaciones.minetur.gob.es/ServiciosRESTCarburantes/PreciosCarburantes/EstacionesTerrestres/")

# SHORTCUTS ---------------------------------------------------------------

  # CLEAN CONSOLE = CRTL + l
  # %>% = pipe operator -> shift + crtl + m
  # run line = ctrl + enter
  # assing value = alt + -

# GIT COMMANDS ------------------------------------------------------------

  # git status = info about a repo
  # git commit = add a commit
  # git add . = add the current dir to the entire repo
  # git push -u origin main = send to the remote repo (Git hub)

# CLI COMMANDS ------------------------------------------------------------

  # pwd = shows the current location
  # ls = list terminal
  # mkdir = create a dir
  # cd = change dir
  # clear terminal = clear

# BASIC INSTRUCTIONS ------------------------------------------------------

  hugo <- 8 # assigning values

# TIDYVERSE COMMANDS ------------------------------------------------------

  exp_22152945 %>% glimpse() %>% View()

# 27 Septiembre 2023 ------------------------------------------------------

  str(exp_22152945) # get data type
  df <- exp_22152945$ListaEESSPrecio # get variable data
  
  df %>% janitor::clean_names() %>% glimpse() # limpiar nombre columnas
  
  # Fin de la clase de hoy, siguiente hacemos la entrega

# 29 Septiembre 2023 ------------------------------------------------------


# Working W Pipes (OPT.MODE) ----------------------------------------------

  clean_df <- df %>% janitor::clean_names() %>% glimpse()
  clean_data <- df %>% readr::type_convert(locale = readr::locale(decimal_mark = ",")) %>% janitor::clean_names()
  
  clean_data %>% glimpse()
  
  
