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
mistnostSeverniBrodPresBizoniReku : Room 'Severní brod přes Bizoní řeku' 'severní brod přes Bizoní řeku'
		"Překročit Bizoní řeku není zas tak obtížné, zde se ale nachází o něco širší brod vhodný nejen pro přechod, 
		ale také brodění unavených nohou i koňských kopyt. Nádherně čistá řeka se zde trochu zpomaluje."    

  	west = mistnostNapajedloProKone 
  	north = mistnostKonskePastvinySeverneOdBizoniReky 
  	south = mistnostKonskePastvinyJizneOdBizoniReky 
;
