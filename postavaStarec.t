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
 *   Indiánský stařec
 */
starec : Person 'stařec' 'stařec' *1 @mistnostPredTypimStarce
	"Muž, kterého před sebou vidíš, je již staršího vydání, což poznáš především podle jeho šedobílých vlasů. 
	 Ale jak vidno, svůj počet zim si nijak nebere a má se čile k práci. "

    specialDesc = "Vidíš stace, na první pohled velmi čilého. "
	properName = 'Stepní šakal' 
    properNameKohoCeho = 'Stepního šakala'
    properNameKomuCemu = 'Stepnímu šakalovi'
    properNameKohoCo = 'Stepním šakalem'
    properNameKomCem = 'Stepnímu šakalovi'
    properNameKymCim = 'Stepním šakalem'
    globalParamName = 'stařec'
    gcName = 'starce, starci, starce, starci, starcem'
    gcVocab = 'starce/starci'
;
