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
 *   Kůň s rousy pasoucí se na pastvninách J od Bizoní řeky
 */
kunSRousy : UntakeableActor 'kůň' 'kůň' *1 @mistnostKonskePastvinyJizneOdBizoniReky
	"Mohutnější kůň s rousy nad kopyty není zrovna typicky indiánský. Spíše ses s ním setkával v tahu, 
	tento ale přece jen není tak těžký jako bělošští chladnokrevníci, takže se celoročně na stepi uživí. 
	Ale teď se radostně nacpává voňavou travou a vše ostatní nevnímá. "

	specialDesc = "Mohutný kůň s rousy si užívá čerstvou pastvu. "
	properName = 'kůň s rousy' 
    properNameKohoCeho = 'koně s rousy'
    properNameKomuCemu = 'koni s rousy'
    properNameKohoCo = 'koně s rousy'
    properNameKomCem = 'koni s rousy'
    properNameKymCim = 'koněm s rousy'
    globalParamName = 'kůň s rousy'
    gcName = 'koně s rousy, koni s rousy, koně s rousy, koni s rousy, koněm s rousy'
    gcVocab = 'koně koni koněm/s/rousy'
;
