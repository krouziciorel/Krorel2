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
 *   Před týpím zvědavého indiána
 */
mistnostPredTypimZvedavehoIndiana : OutdoorRoom 'Před týpím zvědavého indiána' 'před týpí zvědavého indiána'
		"Přišel jsi ke tradičnímu šajenskému týpí, které se krásně leskne a třpytí na slunci. <<first time>>Vchod 
		je otevřený. <<only>>\n Vidíš týpí.
		Můžeš jít na sever, jihovýchod a na jihozápad. "   

 
	in: DeadEndConnector { "<<first time>>Vstupuješ dále, než však stačíš vstoupit, majitel právě vychází ven a málem se srazíte u vchodu.
	„Sakra, to jsem se ale leknul,“ slyšíš a jak jsi již od mala zvyklý se ihned omlouváš za nepříjemnost. Místní to přejde mávnutím ruky 
	a sám se Ti představí jako Skvrnitý ohon. <<only>>Vchod do týpí je nyní zavřený, což znamená, že mohu jít kamkoliv, ale jen ne tam. " } 
  	west asExit(in)
  	north = mistnostPredTypimNacelnikovaPribuzneho 
  	southeast = mistnostPredTypimStarce 
  	southwest = mistnostJihozapadniHranicePrerie 
;

+ typiZvedavehoIndiana  : CustomImmovable 'týpí' 'týpí' *4
    "Téměř zcela bělostné týpí má u paty zajímavý tmavohnědý vzor vyjadřující vztah k něčemu pozemskému u svého majitele. "

    cannotTakeMsg = 'Od věcí, které mi nepatří raději pařáty pryč, nechci žádné komplikace. '

    gcName = 'týpí, týpí, týpí, týpí, týpím'
    gcVocab = 'týpí/týpí/týpí/týpímu/típí/típí/típí/típí/mu/tee-pee/tee-pee/tee-pee/tee-peemu'
;

