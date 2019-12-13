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
 *   Jižní brod přes bizoní řeku
 */
mistnostJizniBrodPresBizoniReku : Room 'Jižní brod přes bizoní řeku' 'jižní brod přes bizoní řeku'
		"Překročit Bizoní řeku není zas tak obtížné, zde se ale nachází velmi mělký brod vhodný nejen pro přechod, 
		ale také pro brodění unavených nohou i koňských kopyt. Písek se jen blyští a i díky němu je řeka tak nádherně čistá. "    

  	northwest = mistnostKoupalisteUBizoniReky 
  	southeast = mistnostPrerijniLovisteBizonu
;
