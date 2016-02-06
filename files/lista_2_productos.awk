END{
#nivel1=sustituir_nivel1;
#nivel2=sustituir_nivel2;
nivel1=2
nivel2=9
dado=0;
for(i=nivel1; i<=nivel2; i++){
	for(j=0; j<10; j++){
		for(l=0; l<10; l++){
			peso[dado]=10000*l+100*i+j;
			dado++;
		}
	}
}
indice_peso=dado-0.1;
srand();
for(i=0; i<10000; i++){
	k=int(indice_peso*rand());	
	print peso[k];
}
}
