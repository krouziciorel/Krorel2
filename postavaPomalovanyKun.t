#charset "utf-8"

/*
 *   Kroužící orel 2 - Indiánská vesnice
 *
 *   Pokračování prvního dílu Úprk z města naprogramované v systému TADS. 
 *   Vytvořil Luděk Šťastný s vydatnou pomocí a náměty českých textovkářů.
 */

#include <adv3.h>
#include <cs_cz.h>

/*
 *   Pomalovaný kůň pasoucí se na pastvninách J od Bizoní řeky
 */
pomalovanyKun : UntakeableActor 'kůň' 'kůň' *1 @mistnostKonskePastvinyJizneOdBizoniReky
	"Větší čiperné štíhlé zvíře strakaté barvy má okolo obou očí modře namalované kruhy a ty mu opravdu velmi sluší. "

	specialDesc = "Pomalovaný kůň si se zaujetím užívá zelenou dobrotu. "
	properName = 'pomalovaný kůň' 
    properNameKohoCeho = 'pomalovaného koně'
    properNameKomuCemu = 'pomalovanému koni'
    properNameKohoCo = 'pomalovaní koně'
    properNameKomCem = 'pomalovanému koni'
    properNameKymCim = 'pomalovaným koněm'
    globalParamName = 'pomalovaný kůň'
    gcName = 'pomalovaného koně, pomalovanému koni, pomalovaného koně, pomalovanému koni, pomalovaným koněm'
    gcVocab = 'pomalovaného pomalovanému pomalovaným/koně koni koněm'
;
