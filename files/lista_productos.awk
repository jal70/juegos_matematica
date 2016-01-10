END{
nivel1=sustituir_nivel1;
nivel2=sustituir_nivel2;
dado=0;
for(i=nivel1; i<=nivel2; i++){
	for(j=0; j<10; j++){
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
