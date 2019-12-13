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
 *   Koupaliště u Bizoní řeky
 */
mistnostKoupalisteUBizoniReky : Room 'Koupaliště u Bizoní řeky' 'koupaliště u Bizoní řeky'
		"Průzračná voda neustále spěchá jižním směrem a její tichý tok uklidňuje Tvé srdce i duši. 
		Místní jí nazývají Bizoní řeka. Tábořiště bez řeky si ani nedokážeš představit, voda je prostě nezbytnost 
		a všechny stepní národy se rády koupou a cachtají, neboť už dávno přišly na to, že čistota je více než půl zdraví. "    

  	northwest = mistnostKonskePastvinyJizneOdBizoniReky 
  	southeast = mistnostJizniBrodPresBizoniReku
	southwest = mistnostPredTipimPsihoLovce 
;
