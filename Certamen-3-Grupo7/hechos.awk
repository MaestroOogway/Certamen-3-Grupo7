BEGIN{
print "%hijo" > "hechos.pl";
}
{
persona1 = $1;
relacion = $2;
persona2 = $3;
if(NR>2) {
    if(relacion == "hijo") {
        print relacion"("persona1","persona2")." > "hechos.pl"; 
    }    
}   
}
END{
print "%padre\npadre(X,Y):-hijo(Y,X)." > "hechos.pl";    
print "%abuelo\nabuelo(X,Y):-hijo(Z,X),hijo(Y,Z)." > "hechos.pl";
print "%hermano\nhermano(X,Y):-hijo(X,Z),hijo(Y,Z),not(X=Y)." > "hechos.pl";
print "%tio\ntio(X,Y):-hermano(Z,X),hijo(Y,Z)." > "hechos.pl";
print "%sobrino\nsobrino(X,Y):-tio(Y,X)." > "hechos.pl";
print "%primo\nprimo(X,Y):-hijo(Y,Z),sobrino(X,Z)." > "hechos.pl";
print "%bisabuelo\nbisabuelo(X,Y):-hijo(Z,X),abuelo(Z,Y)." > "hechos.pl";
print "%tatarabuelo\ntatarabuelo(X,Y):-bisabuelo(Z,Y),hijo(Z,X)." > "hechos.pl";
print "%nieto\nnieto(X,Y):-abuelo(Y,X)." > "hechos.pl";
print "%bisnieto\nbisnieto(X,Y):-bisabuelo(Y,X)." > "hechos.pl";
print "%tataranieto\ntataranieto(X,Y):-tatarabuelo(Y,X)." > "hechos.pl";
print "%ancestro\nancestro(X,Y):-padre(X,Y).\nancestro(X,Y) :- padre(X,Z),ancestro(Z,Y)." > "hechos.pl";
} 