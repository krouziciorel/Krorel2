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
 *   Severní brod přes Bizoní řeku
 */
mistnostSeverniBrodPresBizoniReku : OutdoorRoom 'Severní brod přes Bizoní řeku' 'severní brod přes Bizoní řeku'
		"Překročit Bizoní řeku není zas tak obtížné, zde se ale nachází o něco širší brod vhodný nejen pro přechod, 
		ale také brodění unavených nohou i koňských kopyt. Nádherně čistá řeka se zde trochu zpomaluje.\n 
		Můžeš jít na sever, jih a na západ. "      

	east: DeadEndConnector { "Putování a průzkum vesnice ještě není u konce, neodváděj mě odtud tak brzy. " }
  	northeast asExit(north)
	northwest asExit(north)
	southeast asExit(north)
	southwest asExit(north)
  	west = mistnostNapajedloProKone 
  	north = mistnostKonskePastvinySeverneOdBizoniReky 
  	south = mistnostKonskePastvinyJizneOdBizoniReky 
;
