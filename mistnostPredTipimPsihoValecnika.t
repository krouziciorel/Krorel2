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
 *   Před týpím psího válečníka
 */
mistnostPredTipimPsihoValecnika : OutdoorRoom 'Před týpím psího válečníka' 
		'před týpí psího válečníka'
		"Přicházíš před bělostné týpí s válečnými ozdobami, vchod je však uzavřen. 
		Před stanem sedí pomenší muž a nevypadá zrovna spokojeně. "    
   
	in: DeadEndConnector { "Vchod do tohoto týpí je uzavřen, majitel si asi nepřeje návštěvu. Zkus přijít v jiný čas. " }   
  	west asExit(in)
  	northeast = mistnostPredTipimPsihoBojovnika 
  	southwest = mistnostPredTipimSamana 
;

