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
 *   Před týpím Lovce
 */
mistnostPredTypimLovce : OutdoorRoom 'Před týpím lovce' 'před týpí lovce'
		"Nacházíš se před týpím místního lovce. Chlopně jsou sice otevřeny, ale vchod zavřený, 
		majitel se asi bude věnovat své oblíbené kratochvíli.\n 
		Můžeš jít na sever, jihovýchod a na jihozápad. "   
   
	in: DeadEndConnector { "Nezlob se, můj milý hráči, ale vstoupit bez pozvání, když jsou dveře 
	zavřené, je u nás tabu. " }
	west asExit(in)    
  	north = mistnostPredTypimBystrehoRysa 
  	southwest = mistnostPredTypimOchrancePosvatneBizoniCapky 
  	southeast = mistnostSusakyNaMaso 
;

+ typiLovce : CustomImmovable 'týpí' 'týpí' *4
    "Nejvýraznější malbu na týpí představují dva symboličtí bizoni a mezi nimi červený sluneční kotouč, 
	který se svými paprsky dotýká země dole. "

    cannotTakeMsg = 'Promiň, ale týpí umí v našem kmeni postavit a složit jen a jen ženy. Takže si koukej 
	nějakou najít a mě nech dělat něco jiného. '

    gcName = 'týpí, týpí, týpí, týpí, týpím'
    gcVocab = 'týpí/týpí/týpí/týpímu/típí/típí/típí/típí/mu/tee-pee/tee-pee/tee-pee/tee-peemu'
;
