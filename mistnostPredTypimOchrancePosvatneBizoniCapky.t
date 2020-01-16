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
 *   Před týpím Ochránce posvátné bizoní čapky
 */
mistnostPredTypimOchrancePosvatneBizoniCapky : OutdoorRoom 'Před týpím ochránce posvátné bizoní čapky' 
		'před týpí ochránce posvátné bizoní čapky'
		"<<first time>>Nejposvátnější příbytek kmene je ozdoben symboly lučních kobylek v různých 
		barvách, podle pověstí, které o tomto kmeni vypravovali stařešinové u Vás, symbolizují 
		okusování trávy bizony a jsou spojovány s duhou, hvězdami, se smrtí a nočním nebem. Černý 
		spodní okraj symbolizuje zemi, z něj vystupují čtyři rohaté postavy představující čtyři směry. 
		Pohled na tuto stavbu je vpravdě impozantní, tady se opravdu budeš muset chovat nanejvýše obezřetně. 
		Vše nasvědčuje tomu, že se nacházíš v táboře šajenů, kteří se oddělili od dříve sjednoceného kmene 
		severním směrem od svých původních lovišť. <<only>>Stojíš před jedním z nejposvátnějších příbytků, 
		které v šajenské vsi lze nalézt. Proto se chovej tiše a ohleduplně, na tomto místě asi nikdo nebude 
		zrovna nadšen Tvým výskáním a řevem.\n Vidíš týpí.
		Můžeš jít na severovýchod a na jihozápad. "     
   
	in: DeadEndConnector { "<<first time>>Do tohoto týpí rozhodně povolený vstup nemám a o něco podobného se v 
	žádném případě nepokusím, nejsem sebevrah. <<only>>Opravdu si myslíš, že je dobrý nápad vstoupit nepozván do 
	nejposvátnějšího týpí? Ne, ne, tohle opravdu neudělám, život v táboře má také svá pravidla." }    
  	west asExit(in) 
  	northeast = mistnostPredTypimLovce
	southwest = mistnostPredTypimZranenehoLovce 
;

+ typiOchrancePosvatneBizoniCapky : CustomImmovable 'týpí' 'týpí' *4
    "Nádherně vymalované týpí se symboly lučních kobylek vzbuzuje skutečnou úctu. "

    cannotTakeMsg = 'Tak to jsem přeslechl, vím, že o toto týpí nemáš zájem. A pokud jsem slyšel správně, 
	klidně si takové postav na zahradě a pozvi někoho ideálně staršího z tohoto kmene na návštěvu, Tvá obliba jistě 	  		vzroste. '

    gcName = 'týpí, týpí, týpí, týpí, týpím'
    gcVocab = 'týpí/týpí/týpí/týpímu/típí/típí/típí/típí/mu/tee-pee/tee-pee/tee-pee/tee-peemu'
;
