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
 *   Napajedlo pro koně
 */
mistnostNapajedloProKone : Room 'Napajedlo pro koně' 'napajedlo pro koně'
		"Mělká zátočina slouží koním jako napajedlo, což je vidět ze všudypřítomných otisků kopyt. 
		Momentálně tu žádný není, koním dost dobře stačí i čerstvá orosená ranní tráva."    

  	southwest = mistnostLesniMytinaProKone 
  	northeast = mistnostKonskePastvinySeverneOdBizoniReky 
  	east = mistnostSeverniBrodPresBizoniRek
;
