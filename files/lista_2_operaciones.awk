END{
nivel=sustituir_nivel;
dado=0;
for(i=0; i<nivel; i++){
	for(j=0; (j<10)&&(j<=i); j++){
		if(i-j<10){
			peso[dado]=100*j+i-j;
			dado++;
		}
	}
}
indice_peso=dado-0.1;
srand();
for(i=0; i<1000; i++){
	k=int(indice_peso*rand());	
	print peso[k];
}
}
