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
 *   Před týpím psího lovce
 */
mistnostPredTypimPsihoLovce : OutdoorRoom 'Před týpím psího lovce' 
		'před týpí psího lovce'
		"Před sebou vidíš bělostné týpí s motivem jelenů. Dveře jsou uzavřeny a příbytek
		je již nějaký čas nejspíše neobydlený.\n Vidíš bělostné týpí s motivem jelenů.
		Můžeš jít na severovýchod, severozápad a na jihovýchod. " 
   
	in: DeadEndConnector { "Do neznámého týpí opravdu nevstoupím, zvláště, když majitel
	bude nejpíše nějaký čas mimo domov. Zkus se zastavit později. " } 
  	west asExit(in)
  	southeast = mistnostPredTypimDivkyPripravujiciSeNaTanec 
  	northwest = mistnostPredTypimPsihoBojovnika 
	northeast = mistnostKoupalisteUBizoniReky
;

+ typiPsihoLovce : CustomImmovable 'týpí' 'týpí' *4
    "Poměrně malý stan, který má na východní straně namalovaného prchajícího jelena. Takové obrazy jsou oblíbeny 
	především mezi lovci tohoto kmene. "

    cannotTakeMsg = 'Vypadá to, že zde už nějaký čas nikdo nepobyl, to ale neznamená, že bys musel vše, co ti nepatří, 
	hnedle uzmout. '

    gcName = 'týpí, týpí, týpí, týpí, týpím'
    gcVocab = 'týpí/týpí/týpí/týpímu/típí/típí/típí/típí/mu/tee-pee/tee-pee/tee-pee/tee-peemu'
;
