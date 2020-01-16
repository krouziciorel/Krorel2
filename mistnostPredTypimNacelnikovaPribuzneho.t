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
 *   Před týpím náčelníkova příbuzného
 */
mistnostPredTypimNacelnikovaPribuzneho : OutdoorRoom 'Před týpím náčelníkova příbuzného' 
		'před týpí náčelníkova příbuzného'
		"Před Tebou se tyčí větší, ale bělostné týpí kromě namalovaných koňských žíní bez ozdob 
		se štítem na trojnožce. Vchodové dveře jsou otevřeny a návštěva je tudíž vítána.\n Vidíš 
		týpí a štít na trojnožce.  
		Můžeš vstoupit dovnitř, jít na sever a na jih. "     
   
	in: TravelMessage { -> mistnostTypiNacelnikovaPribuzneho "Opatrně odhrnuješ kožešinu 
	a vstupuješ do týpí. " }  
  	west asExit(in)
  	north = mistnostPredTypimMirovehoNacelnika 
  	south = mistnostPredTypimZvedavehoIndiana
;

+ typiNacelnikovaPribuzneho  : CustomImmovable 'týpí' 'týpí' *4
    "Poměrně veliké týpí z bizoních kůží. Jen podle umístění ve vsi a štítu na trojnožce, 
	 který vidíš poblíž vchodu, poznáváš, že se jedná o osobu či osoby příbuzné mírovému náčelníkovi. "

    cannotTakeMsg = 'Promiň, ale tohle je opravdu docela veliké sousto. Zkus sehnat někoho na pomoc. '

    gcName = 'týpí, týpí, týpí, týpí, týpím'
    gcVocab = 'týpí/týpí/týpí/týpímu/típí/típí/típí/típí/mu/tee-pee/tee-pee/tee-pee/tee-peemu'
;

+ stit : CustomImmovable 'štít' 'štít' *2
	"Nádherně pomalovaný štít, který má svého majitele ochránit před vším zlým a neznámým. "

	cannotTakeMsg = 'Měl bys vědět, že malba na těchto štítech pochází z vize svého majitele a na nikoho 
	jiného nemá žádný vliv. A jak jistě víš, krást se nemá. Alespoň zde to určitě dělat nehodlám.“ '

    gcName = 'štítu, štítu, štít, štítu, štítem'
    gcVocab = 'štítu/štít/štítem'
;

+ Decoration 'trojnožka' 'trojnožka' *3
   "Jednoduchá trojnožka podobná té, která se používá na dnes již tak oblíbený kovový kotlík. "

	notImportantMsg = 'Tohle bych opravdu nedělal a mimo jiné si jí můžeš snadno v blízkém lese vyrobit. '

    gcName = 'trojnožku, trojnožce, trojnožka, trojnožce, trojnožkou'
    gcVocab = 'trojnožku/trojnožce/trojnožka/trojnožkou'
;
