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
 *   Před týpím psího bojovníka
 */
mistnostPredTipimPsihoBojovnika : OutdoorRoom 'Před týpím psího bojovníka' 
		'před týpí psího bojovníka'
		"Před sebou vidíš bělostné týpí s malou ozdobou a motivem koně. Dveře jsou uzavřeny 
		a podle stop to vypadá, že už zde nějaký čas nikdo nebyl. "    
   
	in: DeadEndConnector { "Jak jistě víš, chod do tohoto týpí je uzavřen a majitel bude asi 
	někde na cestách." }  
  	west asExit(in)
  	east = mistnostPredTipimPsihoLovce 
  	southwest = mistnostPredTipimPsihoValecnika 
  	northwest = mistnostLesniMytinaProKone 
;

