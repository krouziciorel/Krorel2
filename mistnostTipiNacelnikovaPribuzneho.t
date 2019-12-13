#charset "utf-8"

/*
 *   Kroužící orel 2 - Indiánská vesnice
 *
 *   Pokračování prvního dílu Úprk z města naprogramované v systému TADS. 
 *   Vytvořil Luděk Šťastný s vydatnou pomocí a náměty českých textovkářů.
 */


#include <adv3.h>
#include <cs_cz.h>

/* ------------------------------------------------------------------------ */
/*
 *   Týpí náčelníkova příbuzného
 */
mistnostTipiNacelnikovaPribuzneho : Room 'Týpí náčelníkova příbuzného' 'týpí náčelníkova příbuzného'
		"Po vstupu do týpí si ihned všimneš jeho velmi skromného interiéru poskytujícího sice dostatečný 
		komfort k bydlení, ovšem o žádnou výstavnost se zde rozhodně nejedná. Na posteli sedí žena ve 
		středních letech a právě si maluje obličej žlutou barvou. Poblíž má také kostěné česadlo, péče o vlasy 
		je na pořadí dne asi hned poté. Na momentálně vyhaslém ohništi vidíš trojnohu s malou zavěšenou plotnou, 
		na které je položena prázdná pánvice. "    

	out: TravelMessage { -> mistnostPredTipimNacelnikovaPribuzneho  "Po odhrnutí kožešiny
	se dostáváš ven. " }
	east asExit(out)
;
