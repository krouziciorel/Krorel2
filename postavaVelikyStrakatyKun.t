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
 *   Veliký strakatý kůň pasoucí se na lesní mýtině
 */
VelikyStrakatyKun : UntakeableActor 'kůň' 'kůň' *1 @mistnostLesniMytinaProKone
	"Před Tebou se tyčí dosti veliká postava strakatého koně, který Ti velice připomíná skot, který chovají bledé tváře a v rezervacích nyní již i indiáni. 
	Kůň je viditelně unavený a zdá se Ti, že i ustaraný a je rád, že má svůj klid, proto na Tvůj pohled nijak nereaguje a se svěšenou hlavou odpočívá dál. 
	Vypadá to, že se před nedávnem opravdu dost naběhal. "

	specialDesc = "Odpočívá zde veliký strakatý kůň, opravdový kolos mezi čtyřnožci, který se na stepích příliš často nevidí. "
	properName = 'veliký strakatý kůň' 
    properNameKohoCeho = 'velikého strakatého koně'
    properNameKomuCemu = 'velikému strakatému koni'
    properNameKohoCo = 'velikého strakatého koně'
    properNameKomCem = 'velikém strakatém koni'
    properNameKymCim = 'velikým strakatým koněm'
    globalParamName = 'veliký strakatý kůň'
    gcName = 'velikého strakatého koně, velikému strakatému koni, velikého strakatého koně, velikému strakatému koni, velikým strakatým koněm'
    gcVocab = 'velikého strakatého velikému strakatému velikým strakatým/koně/koni/koněm'
;
