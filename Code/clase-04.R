## clase-04: leer/escribir conjuntos de datos
## update: 11-11-2021
## R version 4.1.1 (2021-08-10)

## limpiar entorno
rm(list=ls()) 

## instalar/llamar pacman
require(pacman)

## usar la función p_load de pacman para instalar/llamar las librerías de la clase
p_load(rio, # función import/export: permite leer/escribir archivos desde diferentes formatos. 
       skimr, # funcion skim: describe un conjunto de datos
       janitor, # contiene conjuntos de datos.
       dplyr) # renombar variables

## verificar directorio
getwd()
list.files("input")


data_csv = import(file("datos censo colombia.csv", skip=6, encoding = "UTF 8"))
df <- import(file("input/poblacion dane.xslx" , skip=9))

df2 <- clean_names(df)

export(x = df2, file = "output/pobacion dane nombres limpios.xlsx")

## import_list

archivos <- list.files("imput", full.names = T)

lista_df <- import_list(file = archivos)

db1 <- lista_df[(1)]
db2 <- lista_df[(2)]

export[x = lista_df , file = "output/lista R.rdo"


