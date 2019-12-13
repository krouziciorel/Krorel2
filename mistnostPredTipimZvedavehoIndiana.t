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
mistnostPredTipimZvedavehoIndiana : OutdoorRoom 'Před týpím zvědavého indiána' 'před týpí zvědavého indiána'
		"Přišel jsi ke tradičnímu šajenskému týpí, které se krásně leskne a třpytí na slunci. Vchod je otevřený. "    

 
	in: DeadEndConnector { "<<first time>>Vstupuješ dále, než však stačíš vstoupit, majitel právě vychází ven a málem se srazíte u vchodu.
	„Sakra, to jsem se ale leknul,“ slyšíš a omlouváš se za nepříjemnost. Místní to přejde mávnutím ruky a po krátkém rozhovoru 
	se Ti představí jako Skvrnitý ohon. Na rozdíl od Tebe se do města bledých tváří vždy těší a snaží se získat všechny 
	možné informace. Připadá Ti, že by neměl nic proti tomu se tam odstěhovat – asi ještě nepoznal, co by tam čekalo, ale kdo chce kam, 
	pomožme mu tam. Chtěl by si prý vydělat na veliký dům.<<only>>Vchod do týpí je zavřený, což znamená, že mohu jít kamkoliv, ale jen ne tam. " } 
  	west asExit(in)
  	north = mistnostPredTipimNacelnikovaPribuzneho 
  	southeast = mistnostPredTipimStarce 
  	southwest = mistnostJihozapadniHranicePrerie 
;



