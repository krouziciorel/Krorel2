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
mistnostNapajedloProKone : OutdoorRoom 'Napajedlo pro koně' 'napajedlo pro koně'
		"Mělká zátočina slouží koním jako napajedlo, což je vidět ze všudypřítomných otisků kopyt. 
		Momentálně tu žádný není, koním dost dobře stačí i čerstvá orosená ranní tráva.\n 
		Můžeš jít na severovýchod, východ a na jihozápad. "   

  	north: DeadEndConnector { "Když teď zmizím a nic se nedozvím, ve svém hledání se nedostanu dál. " }
  	south asExit(north)
	west asExit(north)
	northwest asExit(north)
	southeast asExit(north)
	southwest = mistnostLesniMytinaProKone 
  	northeast = mistnostKonskePastvinySeverneOdBizoniReky 
  	east = mistnostSeverniBrodPresBizoniReku
;
