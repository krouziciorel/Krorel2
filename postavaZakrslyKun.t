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
 *   Zakrslý kůň pasoucí se na lesní mýtině
 */
ZakrslyKun : UntakeableActor 'zakrslý kůň' 'kůň' *1 @mistnostLesniMytinaProKone
	"Před sebou vidíš opravdu zvláštní stvoření, maličkého srandovního, ale roztomilého miniponíka, který Ti sahá někam nad kolena. 
	Malý čipera vesele chodí sem a tam, stále k něčemu čichá a něco větří. <<first time>>Najednou si vzpomínáš, že některé dámy bledých 
	tváří mají takové mini poníky na svých zahradách nejen pro spásání trávy, ale také pro ozdobu, jiné využití však nemají. Ale jakpak 
	se tento dostal k indiánům, zatoulal se nebo v tom bude něco jiného... Nějaký neodbytný pocit Ti říká, že tohle bys měl prozkoumat. 
	Asi by bylo nejlepší někoho se zeptat, někoho, komu by se tenhle koník mohl hodit. <<only>>"

	specialDesc = "Pase se zde malý legrační zakrslý kůň, jak říká páníček těchto raubířů, cituji, Malý pony zlobivých rozměrů. "
	properName = 'zakrslý kůň' 
    properNameKohoCeho = 'zakrslého koně'
    properNameKomuCemu = 'zakrslému koni'
    properNameKohoCo = 'zakrslí koně'
    properNameKomCem = 'zakrslému koni'
    properNameKymCim = 'zakrslým koněm'
    globalParamName = 'zakrslý kůň'
    gcName = 'zakrslého koně, zakrslému koni, zakrslého koně, zakrslému koni, zakrslým koněm'
    gcVocab = 'zakrslého zakrslému zakrslým/koně koni koněm'
;
