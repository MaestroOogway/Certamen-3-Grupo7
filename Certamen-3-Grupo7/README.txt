REQUERIMIENTO 1 y 2
En consola ejecutar el siguiente comando. 
awk -F", *" -f hechos.awk arbol.CSV            //comando para generar archivo hechos.pl mediante programa hechos awk
Una vez obtenido y generado el archivo hechos.pl localizar la ruta hacia el archivo para su correspondiente uso.
REQUERIMIENTO 3
consult('/home/fabian/certamen3/hechos.pl').    //comando para direccionar la rut a hechos.pl
Finalmente ejecutar algunas consultas en prolog.
hijo(carlos,isabelII).
abuelo(isabelII,harry).
primo(archie,luis).
REQUERIMIENTO 4
cargar el archivo R4-Lenguajes de Programcion en un cuaderno posteriormente cargar el archivo arbol.csv
ejecutar el codigo y visualizar contenido.