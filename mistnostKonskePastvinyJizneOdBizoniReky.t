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
 *   Koňské pastviny jižně od Bizoní řeky
 */
mistnostKonskePastvinyJizneOdBizoniReky : Room 'Koňské pastviny jižně od Bizoní řeky' 'koňské pastviny jižně od Bizoní řeky'
		"Moc pěkný pás země s vysokou stepní trávou představuje ideální pastviny pro koně. Takových je v okolí vesnice spousta, 
	takže si čtyřnozí krasavci mohou vybírat pro sebe tu nejlepší. Nyní jsou zde pouze dva větší koně, kteří se spokojeně pasou. Jeden z nich je pomalován. "    

  	west = mistnostLesniMytinaProKone 
  	north = mistnostSeverniBrodPresBizoniReku 
  	southeast = mistnostKoupalisteUBizoniReky 
;
