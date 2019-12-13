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
 *   Před týpím mírového náčelníka
 */
mistnostPredTipimMirovehoNacelnika : OutdoorRoom 'Před týpím mírového náčelníka' 
		'před týpí mírového náčelníka'
		"Nyní jsi dorazil přímo do středu táborového kruhu, kde se vyjímá sice ohromné týpí, 
		ale zcela bez ozdob. Dveře týpí jsou zavřené. "    
   
	in: DeadEndConnector { "Nemohu vstupovat do týpí se zavřenými dveřmi a zvláště ne do týpí 
	náčelníka. Budu si muset počkat nebo jít na věc jinak. " }  
  	west asExit(in)
  	north = mistnostPredTipimLecitele 
  	south = mistnostPredTipimNacelnikovaPribuzneho 
;

