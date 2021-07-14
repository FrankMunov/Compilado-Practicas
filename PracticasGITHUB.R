# 1.Ejemplo de las estructuras if y for.

edad = 65

if (edad >= 21) {
  
  print("Adulto")
  
}else{
  
  print("Joven")
  
}

# FOR
final=25

for (i in 1:final) 
{print(i)
}

# 2.Declare un tipo de variable double, integer y carácter

#Double 
variableDouble =4.8

typeof(variableDouble)

#String o Caracter 
VariableString ="Jensy"

typeof(VariableString)

#integer
VariableInteger = 10L

typeof(VariableInteger)

# 3.Cree un vector de enteros

VE=c(2L,4L,8L,12L,3L,7L,6L,10L,9L,1L)
VE[4]

# 4.Cree un vector con los meses del año

VM= c("enero","febrero","marzo","abril","mayo","junio","julio","agosto","setiembre",
      "octubre","noviembre","diciembre")

# 5.Cree un vector con nombre de personas

VP=c("Nicole","Melany","Sandra","Victor","Wagner","Tatiana","Leo","Tommy")

# 6.Cree los siguientes vectores

Nombrepelicula=c("Shrek","Shrek2","Shrek tercero","Shrek:Felices para siempre")

Puntuacion=c(7.9,7.2,6.1,6.3)

Antes_del_2005=c(T,T,F,F)

# 7. Saque las siguientes funciones con base algún vector numérico del ejercicio 
# 6 (Vector 2: Puntuación), haga investigación de los mismos

length(Puntuacion)
# Es la longitud de los elementos del objeto

min(Puntuacion) 

# Trae la puntuaciòn minima de los elementos

max(Puntuacion)

# Trae la puntuaciòn maxima de los elementos

mean(Puntuacion)
#

median(Puntuacion)

sort(Puntuacion)

plot(Puntuacion)

unique(Puntuacion)

which.max(Puntuacion)

which.min(Puntuacion)

Sqrt (Puntuacion)

# 8.Genere un vector con valores del 1 al 100

vector8 = c(1:100)

# 9.Genere un vector con valores del 1 al 100 de 10 en 10

vector1 = c (seq(from = 0, to = 100, by = 10))

vector1

#**************Practica 2*************
#**************Practica 2*************
#**************Practica 2*************

#Con base al ejercicio genere un dataframe 


#Caso estadístico 

Insuficiente=c("I")
Bueno=c("B")
Regular=c("R")
Medio=c("M")
Alto=c("A")

resultados=c("A","A", "M", "M", "M", "M", "M","I","B","B","R","I","I","I","R","R",
             "R","R","R","R","R","R","R","R","R", "M", "M", "M", "M", "M", "M",
             "M", "M", "M", "M", "M", "M", "M","A","A")

#Frecuencia absoluta
FrecuenciaAbsoluta = table(resultados)
FrecuenciaAbsoluta

#Tabla Frecuencia Relativa

FrecuenciaRelativa = FrecuenciaAbsoluta / length(resultados)

FrecuenciaRelativa

#3. Genere las estructuras necesarias para crear el siguiente dataframe 

nombres = c ("hugo", "paco","luis","paty","maria","ruben","gaby")

edades = c (28L,26L,32L,24L,33L,23L,43L)

sueldos = c (12.5, 13.5, 14.8, 7.1, 57.7, 45.3, 34.2)

genero = c ("M","M","M","F","F","M","F")

pasatiempos = c ("musica","musica","estudio","videojuegos","musica","musica","videojuegos")

#dataframe
infodf <- data.frame (nombres, edades, sueldos, genero, pasatiempos)
View(infodf)


#Cree un dataframe con los siguientes insumo
#Author DataFlair

int_vec <- c(1,2,3)

char_vec <- c("a", "b", "c")

bool_vec <- c(TRUE, TRUE, FALSE)

Salario <- c(5000,56700,6000)

DatosDos= data.frame(int_vec,char_vec,bool_vec,Salario)

View(DatosDos)

DatosDos$Salario+(0.05*DatosDos$Salario)




#Parte 2 Caso estadístico

genero = c ("Hombre","Mujer","Hombre","Mujer","Hombre","Mujer",
            "Hombre","Mujer","Hombre","Hombre")

edadcaso = c (10,20,30,40,50,55,60,63,67,68)

glucemia_basal = c (123,230,180,164,210,220,193,202,152,185)

tratamiento = c (F,T,F,F,T,F,T,T,F,F)

#dataframe
mispacientes = data.frame(genero,edadcaso,glucemia_basal,tratamiento)
View (mispacientes)

#ver estructura de tabla
summary(mispacientes)

max (mispacientes$glucemia_basal)

min (mispacientes$edadcaso)

mean (mispacientes$edadcaso)

# es la medida de dispersión más común, que indica qué tan dispersos están los datos con respecto a la media
sd(mispacientes$edadcaso)

round (sd(mispacientes$edadcaso),2)

#Cuantiles son unas medidas de posición que dividen a la distribución en un cierto número de partes
#de manera que en cada una de ellas hay el mismo de valores de la variable.
quantile (mispacientes$edadcaso) 


#Saque la frecuencia absoluta de la glucemia basal 

#Frecuencia absoluta
FrecuenciaAbsoluta1 = table(glucemia_basal)
FrecuenciaAbsoluta1

#Tabla Frecuencia Relativa

FrecuenciaRelativa1 = FrecuenciaAbsoluta1 / length(genero)

FrecuenciaRelativa1

#Investigue alguna forma de representar gráficamente las variables edad y genero 
plot (as.factor(mispacientes$genero))
hist (mispacientes$edadcaso)




#**************Practica 3*************
#**************Practica 3*************
#**************Practica 3*************https://www.kaggle.com/datasets

#Realice un ejemplo los siguientes gráficos y explíquelos:
#· barras = nos muestra que las muestas de agua en su mayoria no son potables, el segundo grafico nos muestra 
#una tendencia de las muestras del agua no potable a poseer un rango de sulfato entre 200 y 250

plot(as.factor(water_potability$Potability ))
plot(as.factor(water_potability$Potability ),water_potability$Sulfate)

water_potabilityfiltro = filter(water_potability, Sulfate <250 & Potability == 1)
View(water_potabilityfiltro)

#· time based

mis_fechas <- seq(as.Date("2014/1/1"), by = "month", length = 50 ) 

plot(mis_fechas,rnorm(50), type = "l")

#· correlación = nos muestra que no hay una correlacion fuerte en ninguna de las variables de la base
View(water_potability)
plot(select(water_potability,Solids,Organic_carbon,Conductivity,ph,Turbidity))



#**************Práctica 4 *************
#**************Práctica 4 ************
#**************Práctica 4 *************
#**************Práctica 4 *************


#Nota: escoger un objetivo de análisis

#Realice un análisis de la base de datos Northwind de usar

#· Conexiones SQL

#· Dplyr

#· Gpplot, plot, qplot o plotly






#**************Práctica 5 *************
#**************Práctica 5 *************
#**************Práctica 5 *************
#**************Práctica 5 *************


#Planten 2 escenarios donde aplicarían un modelo de regresión lineal


#Relacion Capacidad de pago vs Edad


#Relacion horas en linea vs edad 

