#charset "utf-8"

/*
 *   Kroužící orel 2 - Indiánská vesnice
 *
 *   Pokračování prvního dílu Úprk z města naprogramované v systému TADS. 
 *   Vytvořil Luděk Šťastný s vydatnou pomocí a náměty českých textovkářů.
 */


#include <adv3.h>
#include <cs_cz.h>

/* ------------------------------------------------------------------------ */
/*
 *   Koupaliště u Bizoní řeky
 */
mistnostKoupalisteUBizoniReky : OutdoorRoom 'Koupaliště u Bizoní řeky' 'koupaliště u Bizoní řeky'
		"Průzračná voda neustále spěchá jižním směrem a její tichý tok uklidňuje Tvé srdce i duši. 
		Místní jí nazývají Bizoní řeka. Tábořiště bez řeky si ani nedokážeš představit, voda je prostě nezbytnost 
		a všechny stepní národy se rády koupou a cachtají, neboť už dávno přišly na to, že čistota je více než půl zdraví.\n 
		Můžeš jít na severozápad, jihovýchod a na jihozápad. "     

	atmosphereList : ShuffledEventList
	{
		[
			'Poblíž se prohnalo pár malých kluků hrajících hru s obručemi. Jeden ji vyhazuje nad hlavu a druzí se ji snaží 
			prostřelit šípy, nutno uznat, že prckové jsou opravdu šikovní. A stále přitom utíkají neznámo kam, ti malí svišťové 
			jsou prostě neúnavní. ',
			'Lekl jsi se divokého zaplácání křídel, když z houští vyletěl opeřenec, vzdušný strážce vodních proudů. '
		]
		eventPercent = 50
		eventReduceAfter = 6
		eventReduceTo = 25
	}

	north: DeadEndConnector { "Ano, stačí si vyrobit šikovnou lodičku a zmizet... Rád, ještě jsem se ale nedozvěděl to, 
	co potřebuji. " }
  	south asExit(north)
	east asExit(north)
	west asExit(north)
	northeast asExit(north)	
  	northwest = mistnostKonskePastvinyJizneOdBizoniReky 
  	southeast = mistnostJizniBrodPresBizoniReku
	southwest = mistnostPredTypimPsihoLovce 
;
