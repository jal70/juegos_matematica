END{
#nivel=sustituir_nivel;
nivel=5;
dado=0;
for(i=0; i<nivel; i++){
	for(j=0; j<nivel; j++){
			peso[dado]=100*i+j;
			dado++;
	}
}
indice_peso=dado-0.1;
srand();
for(i=0; i<1000; i++){
	k=int(indice_peso*rand());	
	print peso[k];
}
}
