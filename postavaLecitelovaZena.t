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
 *   Žena indiánského léčitele Jarní kvítí
 */
lecitelovaZena : Person 'indiánka' 'indiánka' *3 @mistnostTypiLecitele
	"<<first time>>Indiánská fešanda, která právě s úsměvem na rtech rozčesává vlasy svému muži. Velmi dlouhá a především 
	příjemná procedura, pro své muže doporučuje jedenáct z deseti indiánek. <<only>>Žena je ověšena různými ozdobami, které barevně 
	velmi vkusně ladí s jejími skvostnými jelenicovými šaty. <<first time>>Zvláště jedna se Ti moc zamlouvá. <<only>>"

    specialDesc = "Ženě asi nebude cizí bylinkářství, možná i proto cítíš, že si se svým mužem bude dobře rozumět. "
	properName = 'Jarní kvítí' 
    properNameKohoCeho = 'Jarním kvítím'
    properNameKomuCemu = 'Jarnímu kvítí'
    properNameKohoCo = 'Jarním kvítím'
    properNameKomCem = 'Jarnímu kvítí'
    properNameKymCim = 'Jarním kvítím'
    globalParamName = 'indiánka'
    gcName = 'indiánku, indiánce, indiánku, indiánce, indiánkou'
    gcVocab = 'indiánku/indiánce/indiánkou'
;
