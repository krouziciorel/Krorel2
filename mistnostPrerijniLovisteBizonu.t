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
 *   Prérijní loviště bizonů
 */
mistnostPrerijniLovisteBizonu : OutdoorRoom 'Prérijní loviště bizonů' 'prérijní loviště bizonů'
		"Vstupuješ na obrovskou otevřenou planinu zbrázděnou do nekonečna se táhnoucími stopami menších 
		i větších koní. Je Ti hned jasné, oč jde, odtud šajenští lovci vyjíždějí lovit bizony do širé stepi.\n Vidíš 
		širou step.
		Můžeš jít na severozápad, jih a na západ. "   

	atmosphereList : ShuffledEventList
	{
		[
			'V obrovské dálce vidíš pasoucí se stádo obrovských králů stepi. ',
			'Divocí koně doslova přelétli horizont před Tvýma očima a nespoutaně prchají neznámo kam. ',
			'Čerstvý stepní vítr přináší nesmírně líbivou vůni pečeného masa. '
		]
		eventPercent = 50
		eventReduceAfter = 6
		eventReduceTo = 25
	}    

	north: DeadEndConnector { "Nejen, že bych si také rád nějakého bizona ulovil, ale především potřebuji 
	dozvědět se nějakou zajímavost od místních, než skutečně odcválám neznámo kam. " }
  	east asExit(north)
	southeast asExit(north)
	northeast asExit(north)
	southwest asExit(north)	
  	northwest = mistnostJizniBrodPresBizoniReku 
  	south = mistnostSusakyNaMaso 
  	west = mistnostPredTypimValecnehoNacelnika 
;

+ Decoration 'širá step' 'step' *3
    "Nekonečná volnost, vítr ve vlasech i hřívách tryskajících koní, pálivé slunce i pálivý led, spousta bizonů a rychlé proudy řek, co více si přát... " 

	notImportantMsg = 'Zkus se na chvíli zastavit a nádhernou stepní krajinu si jaksepatří užít, nemá smysl škádlit jiné smysly, než ty, 
	které jsi využil při prvním pohledu. '  

    gcName = 'stepi, stepi, step, stepi, stepí'
    gcVocab = 'širé širá širou/stepi/step/stepí'
;
