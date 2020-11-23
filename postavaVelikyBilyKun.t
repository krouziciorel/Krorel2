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
 *   Veliký bílý kůň pasoucí se na lesní mýtině
 */
VelikyBilyKun : UntakeableActor 'veliký bílý kůň' 'kůň' *1 @mistnostLesniMytinaProKone
	"Vidíš velikého bílého koně odpočívajícího pod nízkou borovicí. Tělo má velice štíhlé, téměř hubené, ale silné nohy prozrazují, 
	že to bude vynikající běžec. V koních se docela vyznáš, tenhle bude mít v sobě určitě jižanskou krev, a tedy i temperament. "

	specialDesc = "Veliký bílý řechták si užívá chvíli oddychu. "
	properName = 'veliký bílý kůň' 
    properNameKohoCeho = 'velikého bílého koně'
    properNameKomuCemu = 'velikému bílému koni'
    properNameKohoCo = 'velikého bílého koně'
    properNameKomCem = 'velikém bílém koni'
    properNameKymCim = 'velikým bílým koněm'
    globalParamName = 'veliký bílý kůň'
    gcName = 'velikého bílého koně, velikému bílému koni, velikého bílého koně, velikému bílému koni, velikým bílým koněm'
    gcVocab = 'velikého bílého velikému bílému velikým bílým/koně/koni/koněm'
;
