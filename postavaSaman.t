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
 *   Indiánský šaman Přítel bizonů
 */
saman : Person 'indiánský šaman' 'šaman' *1 @mistnostTypiSamana
	"Šaman nebude starší, než Ty a vypadá docela obyčejně, dokonce se dá říci, že je Ti trochu podobný. "

    specialDesc = "Lidé, o kterých si myslíme, že mohou být výjimeční, často ničím zvláštní nejsou, 
	právě zde je vidět nádherný příklad. "
	properName = 'Přítel bizonů' 
    properNameKohoCeho = 'Přítele bizonů'
    properNameKomuCemu = 'Příteli bizonů'
    properNameKohoCo = 'Přítelem bizonů'
    properNameKomCem = 'Příteli bizonů'
    properNameKymCim = 'Přítelem bizonů'
    globalParamName = 'šaman'
    gcName = 'šamana, šamanovi, šamana, šamanovi, šamanem'
    gcVocab = 'šamana/šamanovi/šamanem'
;
