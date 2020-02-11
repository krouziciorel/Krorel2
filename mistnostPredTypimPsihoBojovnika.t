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
 *   Před týpím psího bojovníka
 */
mistnostPredTypimPsihoBojovnika : OutdoorRoom 'Před týpím psího bojovníka' 
		'před týpí psího bojovníka'
		"Před sebou vidíš bělostné týpí s malou ozdobou a motivem koně. Dveře jsou uzavřeny 
		a podle stop to vypadá, že už zde nějaký čas nikdo nebyl.\n Vidíš bojovníkovo týpí.
		Můžeš jít na severozápad, východ a jihozápad. "    
   
	in: DeadEndConnector { "Jak jistě víš, chod do tohoto týpí je uzavřen a majitel bude asi 
	někde na cestách." }  
  	west asExit(in)
  	east = mistnostPredTypimPsihoLovce 
  	southwest = mistnostPredTypimPsihoValecnika 
  	northwest = mistnostLesniMytinaProKone 
;

+ typiPsihoBojovnika : CustomImmovable 'týpí' 'týpí' *4
    "Poměrně malý stan, který má na východní straně namalovaného koně v trysku. Majitel bude jistě 
	nadšenec do těchto zvířat stejně jako spousta místních, Tebe nevyjímaje. "

    cannotTakeMsg = 'Vypadá to, že zde už nějaký čas nikdo nepobyl, naštěstí na stepi tak často neprší, 
	takže se nic hrozného neděje. Kam to ale mám složit? '

    gcName = 'týpí, týpí, týpí, týpí, týpím'
    gcVocab = 'týpí/týpí/týpí/týpímu/típí/típí/típí/típí/mu/tee-pee/tee-pee/tee-pee/tee-peemu'
;

