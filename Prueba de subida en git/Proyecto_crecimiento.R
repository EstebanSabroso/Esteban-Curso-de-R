library(tidyverse)

crecimiento <- read_delim(file = "C:/Users/esteban.sabroso/Desktop/Curso R/proyecto_doctorado_UAH_R/Datos crecimiento 12012026.txt")

View(crecimiento)
summary(crecimiento)
glimpse(crecimiento)

#que me elimine todas las celdas control de Replicas porque son 0

filter_crecimiento <- crecimiento |>
  filter(Replicas != "Control")

#voy a quitar las mayusculas con rename

crecimiento_plot <- filter_crecimiento |>
  rename(
    replicas = Replicas,
    tiempo_horas = Tiempo_horas,
    medio = Medio
  )
