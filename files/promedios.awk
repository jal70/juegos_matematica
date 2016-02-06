$1~/X/||/OK/{
indice=$2;
tiempo[indice]+=$6;
veces[indice]+=1;
}
END{
#print "Tabla", "Repeticiones", "Promedio";
for(tabla in tiempo){
print tabla, tiempo[tabla]/(1000*veces[tabla]);
}
}
