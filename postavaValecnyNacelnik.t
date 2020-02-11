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
 *   Válečný náčelník Bystrá antilopa
 */
valecnyNacelnik : Person 'náčelník' 'náčelník' *1 @mistnostTypiValecnehoNacelnika
	"Na první pohled velmi silný muž, jemuž hrají svaly každým pohybem. Co naplat, indiáni jsou válečné 
	a lovecké společenství, svět bělochů je přeci jen dosti odlišný. "

    specialDesc = "S někým takovým by jistě nebylo radno pustit se do křížku. "
	properName = 'Bystrá antilopa' 
    properNameKohoCeho = 'Bystrou antilopu'
    properNameKomuCemu = 'Bystré antilopě'
    properNameKohoCo = 'Bystrou antilopou'
    properNameKomCem = 'Bystré antilopě'
    properNameKymCim = 'Bystrou antilopou'
    globalParamName = 'válečný náčelník'
    gcName = 'válečného náčelníka, válečnému náčelníkovi, válečného náčelníka, válečném náčelníkovi, válečným náčelníkem'
    gcVocab = 'válečného válečnému válečným/náčelníka/náčelníkovi/náčelníkem'
;
