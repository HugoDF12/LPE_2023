
library(tidyverse)
library(janitor)
library(readr)

precio_carburantes_esp <-jsonlite::fromJSON("https://sedeaplicaciones.minetur.gob.es/ServiciosRESTCarburantes/PreciosCarburantes/EstacionesTerrestres/")

precio_carburantes_esp %>% glimpse() %>% View()
str(precio_carburantes_esp)

df <- precio_carburantes_esp$ListaEESSPrecio

df %>% clean_names() %>% glimpse() %>% View()
clean_data <- df %>% type_convert(locale = locale(decimal_mark = ",")) %>%
clean_names() %>% as_tibble()
clean_data %>% glimpse() %>% View()

valores_nulos_por_columna <- colSums(is.na(clean_data))
print(valores_nulos_por_columna)

media_gasoleo_a <- mean(clean_data$precio_gasoleo_a, na.rm = TRUE)
media_gasolina_95_e5 <- mean(clean_data$precio_gasolina_95_e5, na.rm = FALSE)

clean_data <- clean_data %>% mutate(es_low_cost = ifelse(clean_data$precio_gasoleo_a 
                                                         < media_gasoleo_a * 0.90 & clean_data$precio_gasolina_95_e5 < media_gasolina_95_e5 *
                                                           0.90, "Low-Cost", "No Low-Cost"))
clean_data %>% select(precio_gasoleo_a, precio_gasolina_95_e5, rotulo, es_low_cost,
                      direccion, localidad, provincia) %>% View()

write_excel_csv2(clean_data, "estaciones_servicio_low_cost_españa.xls")
