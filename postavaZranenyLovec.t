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
 *   Indiánský zraněný lovec
 */
zranenyLovec : Person 'lovec' 'lovec' *1 @mistnostTypiZranenehoLovce
	"Muž ve středních letech leží a odpočívá. Jeho zranění sice není
	smrtelné, jako lékař však velmi dobře víš, že dost bolestivé. "

    specialDesc = "Zraněný lovec odpočívá na dece. "
	properName = 'Malá noha' 
    properNameKohoCeho = 'Malou nohu'
    properNameKomuCemu = 'Malé noze'
    properNameKohoCo = 'Malou nohou'
    properNameKomCem = 'Malé noze'
    properNameKymCim = 'Malou nohou'
    globalParamName = 'lovec'
    gcName = 'lovce, lovci, lovce, lovci, lovcem'
    gcVocab = 'lovce/lovci/lovcem'
;
