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
 *   Indiánský léčitel Jitřní hvězda
 */
lecitel : Person 'indiánský léčitel' 'léčitel' *1 @mistnostTypiLecitele
	"Dobře stavěný muž těžko odhadnutelného věku, vypadá tak kolem 30, může ale být i starší, 
	to dělají ty dlouhé vlasy a pokud je vedle své pěkné ženy, i ona jej omlazuje. "

    specialDesc = "Léčitel představuje osobu velmi důležitou pro celý kmen, od bolesti si chceme ulevit všichni. "
	properName = 'Jitřní hvězda' 
    properNameKohoCeho = 'Jitřní hvězdu'
    properNameKomuCemu = 'Jitřní hvězdě'
    properNameKohoCo = 'Jitřní hvězdou'
    properNameKomCem = 'Jitřní hvězdě'
    properNameKymCim = 'Jitřní hvězdou'
    globalParamName = 'léčitel'
    gcName = 'léčitele, léčiteli, léčitele, léčiteli, léčitelem'
    gcVocab = 'léčitele/léčiteli'
;
