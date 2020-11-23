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
 *   Lesní bobule
 */
mistnostLesniBobule : OutdoorRoom 'Lesní bobule' 'lesním bobulím'
		"Příjemné tiché místo na kraji lesa, kde se modrá spousta vonících a na chuť jistě velmi zajímavých plodin. 
		Bobule jsou pořádně veliké a sbírat je bude určitě jednodušší než barvou podobné borůvky. Ale to nejpříjemnější 
		je rozverná skupina mladých dívek, které bobule sbírají a právě zpívají nějakou ženskou píseň.\n 
		Můžeš jít na severovýchod, východ a na jihovýchod. "     

	atmosphereList : ShuffledEventList
	{
		[
			'Zničeho nic jsi zaslechl víření bubnů a zahlédl indiánské dívky, které s nesmírnou radostí a smíchem nacvičují 
			nový tanec. Neubráníš se srovnání s dívkami a paničkami z města bledých tváří... tyhle jsou jiné, chovají se opravdově 
			a nespoutaně, taková je skutečná žena do nepohody. ',
			'V houští velmi tiše zmizel některý z obyvatelů lesa. ',
			'Bobule vypadají tak lákavě a ještě lákavěji možnost sbírat je a především mlsat společně s půvabnou dívkou. '
		]
		eventPercent = 50
		eventReduceAfter = 6
		eventReduceTo = 25
	}
	
	north: DeadEndConnector { "Lesem se mohu ztratit velmi jednoduše, ještě mi prosím dej nějaký čas na průzkum 
	této zajímavé osady. " }
	south asExit(north)    
  	west asExit(north)
	northwest asExit(north)
	soutwest asExit(north)
  	southeast = mistnostJihozapadniHranicePrerie 
  	east = mistnostPredTypimLecitele
	northeast = mistnostLesniPorost
;

+ lesniBobule : CustomImmovable 'lesní bobule' 'bobule' *3
    "Nádherné a opravdu veliké plody určené k zakousnutí nebo po naplnění břicha k nasušení. Maso je sice ta nejlepší krmě, kterou znáš, na tyhle bobule se Ti ale také sbíhají sliny. "

    isPlural = true

	cannotTakeMsg = 'Kuš, chmatadlo, tady sbíráme my a žádný muž nám nesmí překážet! křičí jedna s dívek a situaci si viditelně užívá. '

    gcName = 'částí oděvu, částem oděvu, části oděvu, částech oděvu, částmi oděvu'
    gcVocab = 'částí částem části částech částmi/oděvu'
;
