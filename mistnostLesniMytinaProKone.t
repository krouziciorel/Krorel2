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
 *   Lesní mýtina pro koně
 */
mistnostLesniMytinaProKone : OutdoorRoom 'Lesní mýtina pro koně' 'lesní mýtina pro koně'
		"Došel jsi na velikou lesní mýtinu ohraničenou na severu, jihu a západě lesem a na východě 
		otevřenou směrem k řece. Podle stop kopyt je jasné, že koně si sem v horkých dnech po pastvě 
		rádi chodí odpočinout, přeci jen jejich rozměrná těla dokáže slunce pořádně prohřát.\n 
		Můžeš jít na severovýchod, východ, jihovýchod a na jihozápad. "     

	north: DeadEndConnector { "Rád bych si ještě popovídal s lidmi ze vsi a něco nového se dozvěděl. " }
  	south asExit(north)
	west asExit(north)
	northwest asExit(north)	
	southwest = mistnostLesniPorost 
  	northeast = mistnostNapajedloProKone 
  	east = mistnostKonskePastvinyJizneOdBizoniReky 
  	southeast = mistnostPredTypimPsihoBojovnika 
;
