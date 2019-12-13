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
 *   Týpí starce
 */
mistnostTipiStarce : Room 'Týpí starce' 'týpí starce'
		"Vchod do tohoto týpí je nyní uzavřen, majitel si asi nepřeje návštěvu. 
		Zkus přijít v jiný čas. "    

	out: TravelMessage { -> mistnostPredTipimStarce "Opatrně vycházíš ven. " }
	east asExit(out)
;
