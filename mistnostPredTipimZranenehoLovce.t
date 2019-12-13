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
 *   Před týpím zraněného lovce
 */
mistnostPredTipimZranenehoLovce : OutdoorRoom 'Před týpím zraněného lovce' 
		'před týpí zraněného lovce'
		"Ze zcela bělostného týpí bez jakýchkoliv ozdob se ozývá slabé sténání. 
		Vchodové dveře jsou otevřeny. "    
   
	in: TravelMessage { -> mistnostTipiZranenehoLovce "Nízkým vchodem opatrně vstupuješ
	do týpí. " }  
  	west asExit(in) 
  	southwest = mistnostPredTipimStarce
	northeast = mistostPredTypimOchrancePosvatneBizoniCapky 
;

