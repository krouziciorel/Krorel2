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
 *   Indiánská žena Noční sova
 */
nocniSova : Person 'indiánka' 'indiánka' *3 @mistnostTypiNacelnikovaPribuzneho
	"Středně vysoká žena ušlechtilých rysů oděna do šatů z modré kalikové látky přepásané moc hezkým červeným pásem. 
	Zajímavě a velmi decentně vymalovaný obličej jen zdůrazňuje, že pohled na ní je více než příjemný. "

    specialDesc = "Indiánská žena sedí na posteli. "
	properName = 'Noční sova' 
    properNameKohoCeho = 'Noční sovu'
    properNameKomuCemu = 'Noční sově'
    properNameKohoCo = 'Noční sovou'
    properNameKomCem = 'Noční sově'
    properNameKymCim = 'Noční sovou'
    globalParamName = 'indiánka'
    gcName = 'indiánku, indiánce, indiánku, indiánce, indiánkou'
    gcVocab = 'indiánku/indiánce/indiánkou/indiánce'
;
