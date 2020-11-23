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
 *   Malý strakatý kůň pasoucí se na lesní mýtině
 */
MalyStrakatyKun : UntakeableActor 'malý strakatý kůň' 'kůň' *1 @mistnostLesniMytinaProKone
	"Malý legrační koník, jen o něco větší než polovina Tvého těla, Tě vesele a trochu šibalsky pozoruje. Rozhodně nevypadá hladově, více než cokoliv jiného Ti 
	připomíná pivovarský soudek bledých tváří na nožičkách. Vždy, když se přiblížíš, otočí se bokem, šlehne po Tobě pohledem a v jeho očích vidíš mazanost vlastní 
	malým plemenům. Jako by Ti něco chtěl naznačit. "

	specialDesc = "Zvolna se zde pase malý legrační kůň alias pony-raubíř, který se rovná velikým budoucím potížím. "
	properName = 'malý strakatý kůň' 
    properNameKohoCeho = 'malého strakatého koně'
    properNameKomuCemu = 'malému strakatému koni'
    properNameKohoCo = 'malého strakatého koně'
    properNameKomCem = 'malém strakatém koni'
    properNameKymCim = 'malým strakatým koněm'
    globalParamName = 'malý strakatý kůň'
    gcName = 'malého strakatého koně, malému strakatému koni, malého strakatého koně, malému strakatému koni, malým strakatým koněm'
    gcVocab = 'malého strakatého malému strakatému malým strakatým/koně/koni/koněm'
;
