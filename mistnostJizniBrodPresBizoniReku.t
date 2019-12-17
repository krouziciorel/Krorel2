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
 *   Jižní brod přes bizoní řeku
 */
mistnostJizniBrodPresBizoniReku : OutdoorRoom 'Jižní brod přes bizoní řeku' 'jižní brod přes bizoní řeku'
		"Překročit Bizoní řeku není zas tak obtížné, zde se ale nachází velmi mělký brod vhodný nejen pro přechod, 
		ale také pro brodění unavených nohou i koňských kopyt. Písek se jen blyští a i díky němu je řeka tak nádherně čistá.\n 
		Můžeš jít na severozápad a na jihovýchod. "     

	atmosphereList : ShuffledEventList
	{
		[
			'Okolo Tebe se prohnal bojovně pomalovaný jezdec, s hlasitým výsknutím pobídl koně do cvalu a oba zmizeli v prachu nekonečné stepi. ',
			'Ha, ve vodě se něco zabýslo. Nebo pohnulo, oslněn prudkým sluncem sám nevíš... ',
			'Uklidňující tón řeky tolik láká k nekončícímu lenošení. '
		]
		eventPercent = 50
		eventReduceAfter = 6
		eventReduceTo = 25
	}

	north: DeadEndConnector { "Ano, stačí nauzdit šikovného řechtala a zmizet... Rád, ještě jsem se ale nedozvěděl to, 
	co potřebuji. " }
  	south asExit(north)
	east asExit(north)
	west asExit(north)
	northeast asExit(north)
	southwest asExit(north)	
  	northwest = mistnostKoupalisteUBizoniReky 
  	southeast = mistnostPrerijniLovisteBizonu
;
