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
 *   Před týpím starce
 */
mistnostPredTypimStarce : OutdoorRoom 'Před týpím starce' 
		'před týpí starce'
		"Přišel jsi ke klasickému bělostnému týpí bez jakýchkoliv ozdob. Kousek od něj 
		se nachází nějaký neznámý stařec vyrábějící provazy z bizoních chlupů a jak vidno, docela mu to jde.\n 
		Můžeš vstoupit dovnitř, jít na severovýchod, severozápad a na jih. "     
   
	in: TravelMessage { -> mistnostTypiStarce "Nízkým vchodem vstupuješ dále. " }
  	west asExit(in)
  	northeast = mistnostPredTypimZranenehoLovce 
  	northwest = mistnostPredTypimZvedavehoIndiana 
  	south = mistnostMistoProSajenskeSlavnostiAObrady   
;

