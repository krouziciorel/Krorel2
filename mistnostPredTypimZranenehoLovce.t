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
 *   Před týpím zraněného lovce
 */
mistnostPredTypimZranenehoLovce : OutdoorRoom 'Před týpím zraněného lovce' 
		'před týpí zraněného lovce'
		"Ze zcela bělostného týpí bez jakýchkoliv ozdob se ozývá slabé sténání. 
		Vchodové dveře jsou otevřeny.\n 
		Můžeš vstoupit dovnitř, jít na severovýchod a na jihozápad. "     

	atmosphereList : ShuffledEventList
	{
		[
			'Rozdováděné dívky cválající na neméně rozdováděných koních okolo Tebe prosvištěly 
			s půvabem a lehkostí. ',
			'Přes cestu Ti přeběhl malý, ale o to hbitější hlovacec s nějakou dobrotou v šedé 
			tlamičce. ',
			'Žhavý kotouč doslova smaží stepní trávu, která se půvabně vlní ve větru stejně jako boky 
			tančících místních krasavic. '
		]
		eventPercent = 50
		eventReduceAfter = 6
		eventReduceTo = 25
	}   
   
	in: TravelMessage { -> mistnostTypiZranenehoLovce "Nízkým vchodem opatrně vstupuješ
	do týpí. " }  
  	west asExit(in) 
  	southwest = mistnostPredTypimStarce
	northeast = mistnostPredTypimOchrancePosvatneBizoniCapky
;

+ typiZranenehoLovce  : CustomImmovable 'týpí' 'týpí' *4
    "<<first time>>Ze zcela bělostného týpí bez jakýchkoliv ozdob se ozývá slabé sténání. <<only>>Dveře tohoto 
	tradičního šajenského týpí zcela bez ozdob jsou otevřeny. "

    cannotTakeMsg = 'Ten chudák, co uvnitř sténá, bude potřebovat pomoc. A Ty jsi lékař, opravdu mu chceš pomoci
	tímto způsobem? Nezlob se, ale právě jsem se z Tvého seznamu pacientů odhlásil, nejsem sebevrah. '

    gcName = 'týpí, týpí, týpí, týpí, týpím'
    gcVocab = 'týpí/týpí/týpí/týpímu/típí/típí/típí/típí/mu/tee-pee/tee-pee/tee-pee/tee-peemu'
;
