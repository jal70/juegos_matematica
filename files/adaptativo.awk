$7~/quien_juega/{indice=$2*100+$3; if($1~/OK/){OK[indice]+=1}; veces[indice]+=1}
END{
for(i=0; i<10; i++){
	for(j=i; j<10; j++){
		indice=i*100+j;
		if(veces[indice]!=0){
		integral+=1.05-OK[indice]/veces[indice];
		}
	}
}
indice_peso=0;
for(i=0; i<10; i++){
	for(j=i; j<10; j++){
		indice=i*100+j;
		if(veces[indice]!=0){
		num_tickets=int(1000*(1.05-OK[indice]/veces[indice])/integral);
		for(k=0; k<num_tickets; k++){
			peso[indice_peso]=indice;
			indice_peso++;
		}
		}
	}
}
srand();
for(i=0; i<1000; i++){
	dado=int(indice_peso*rand());	
	print peso[dado];
}
}
