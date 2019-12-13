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
 *   Týpí zraněného lovce
 */
mistnostTipiZranenehoLovce : Room 'Týpí zraněného lovce' 'týpí zraněného lovce'
		"Interiér, do někož jsi vstoupil, nepůsobí na první pohled nijak překvapivě.
		Po příchodu před sebou vidíš pověšené nejrůznější lovecké nástroje a
		Pomůcky, koňskou výstroj nevyjímaje. Nejsmutnější pohled je ovšem
		na ošklivě zraněného muže, který leží na veliké bizoní dece. Rána na boku
		skutečně nevypadá dobře, přes veliké zelené listy je vidět nyní již zaschlá
		krev. "    

	out: TravelMessage { -> mistnostPredTipimZranenehoLovce "Malým otvorem vycházíš ven. " }
	east asExit(out)
;
