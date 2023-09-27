
# SCRPT + STUDENT INFO ----------------------------------------------------

  # NOMBRE: Hugo De Francisco Benito
  # EXP:22152945
  # TEMA: HANDS_ON_01


# LOADING LIBRARIES -------------------------------------------------------
  
  install.packages (c("tidyverse","dplyr"))
  library("dplyr")

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

# BASIC INSTRUCTIONS ------------------------------------------------------

  hugo <-8 # assigning values

# TIDYVERSE COMMANDS ------------------------------------------------------

  exp_22152945 %>% glimpse() %>% View()
  

# 27SEP2023 ---------------------------------------------------------------

  str(exp_22152945) # get data type
  df <- exp_22152945$ListaEESSPrecio # get variable data
  
  
  
