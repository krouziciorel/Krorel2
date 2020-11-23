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
 *   Kůň se světlou hřívou patřící Bystré losici
 */
kunSeSvetlouHrivou : UntakeableActor 'kůň se světlou hřívou' 'kůň' *1 @mistnostPredTypimDivkyPripravujiciSeNaTanec
	"Středně veliký kůň se světlou hřívou se klidně pase, trávy kolem týpí je spousta 
	a tak Ti nevěnuje žádnou pozornost. "

	specialDesc = "Kůň se pase před týpím. "
	properName = 'kůň' 
    properNameKohoCeho = 'koně'
    properNameKomuCemu = 'koni'
    properNameKohoCo = 'koně'
    properNameKomCem = 'koni'
    properNameKymCim = 'koněm'
    globalParamName = 'kůň'
    gcName = 'koně, koni, koně, koni, koněm'
    gcVocab = 'koně/koni/koněm'
;
