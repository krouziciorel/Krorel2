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
 *   Před týpím Lovce
 */
mistnostPredTipimLovce : OutdoorRoom 'Před týpím lovce' 'před týpí lovce'
		"Nacházíš se před týpím místního lovce. Chlopně jsou sice otevřeny, ale vchod zavřený, 
		majitel se asi bude věnovat své oblíbené kratochvíli. "    
   
	in: DeadEndConnector { "Nezlob se, můj milý hráči, ale vstoupit bez pozvání, když jsou dveře 
	zavřené, je u nás tabu. " }
	west asExit(in)    
  	north = mistnostPredTipimBystrehoRysa 
  	southwest = mistnostPredTipimOchrancePosvatneBizoniCapky 
  	southeast = mistnostSusakyNaMaso 
;

