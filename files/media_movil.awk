BEGIN{
print "hola";
count=0;
prom[0]=0;
prom[1]=0;
prom[2]=0;
prom[3]=0;
prom[4]=0;
prom[5]=0;
prom[6]=0;
prom[7]=0;
prom[8]=0;
prom[9]=0;
promedio=0;
for(i=0; i<10; i++){
	promedio+=prom[i];
	}
}
{
tabla=2;
#print $2;
if($2==9 && $1=="OK"){
	print promedio;
	count++;
	indice=count%10
	promedio=promedio-prom[indice]+$6;
	prom[indice]=$6;
	}
}
