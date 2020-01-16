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
 *   Před týpím starce
 */
mistnostPredTypimStarce : OutdoorRoom 'Před týpím starce' 
		'před týpí starce'
		"Přišel jsi ke klasickému bělostnému týpí bez jakýchkoliv ozdob. Kousek od něj 
		se nachází nějaký neznámý stařec vyrábějící provazy z bizoních chlupů a jak vidno, docela mu to jde.\n 
		Vidíš týpí.
		Můžeš vstoupit dovnitř, jít na severovýchod, severozápad a na jih. "     
   
	in: TravelMessage { -> mistnostTypiStarce "Nízkým vchodem vstupuješ dále. " }
  	west asExit(in)
  	northeast = mistnostPredTypimZranenehoLovce 
  	northwest = mistnostPredTypimZvedavehoIndiana 
  	south = mistnostMistoProSajenskeSlavnostiAObrady   
;

+ typiStarce  : CustomImmovable 'týpí' 'týpí' *4
    "Tradiční šajenské týpí zcela bez ozdob Ti dává jasně najevo, že majitel bude mít zcela jiné zájmy, 
	 než zdobení svého obydlí. "

    cannotTakeMsg = 'Nezlob se, ale my indiáni nic takového jako domov důchodců neznáme. U nás jsou starší lidé 
	opravdu ctěni a mají význam, který snad také časem pochopíš. '

    gcName = 'týpí, týpí, týpí, týpí, týpím'
    gcVocab = 'týpí/týpí/týpí/týpímu/típí/típí/típí/típí/mu/tee-pee/tee-pee/tee-pee/tee-peemu'
;
