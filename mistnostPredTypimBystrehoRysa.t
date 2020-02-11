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
 *   Počáteční místnost ve hře - před týpím Bystrého rysa
 */
mistnostPredTypimBystrehoRysa : OutdoorRoom 'Před týpím Bystrého rysa' 'před týpí Bystrého rysa'
		"<<first time>>Po rozloučení s majitelem tohoto krásně vymalovaného týpí si 
		teprve nyní uvědomuješ, že se nacházíš ve vsi kmene Šajenů. Když se rozhlédneš, 
		poznáš charakteristické rysy jejich obydlí. Již v dávných dobách se jednalo o 
		přátelský kmen k lakotům, což do začátku Tvého dalšího putování určitě pomůže. 
		Jejich způsob života, zvyky a rituály jsou velmi podobné, takže jistě nebudeš 
		mít problém s dorozuměním, i když zatím Ti nezbývá nic jiného než posunková řeč. 
		Třeba ale někdo bude znát i Tvůj jazyk. <<only>>Nacházíš se před týpím Bystrého rysa.\n 
		Kromě samotného týpí nevidíš nic zajímavého.\n Můžeš vstoupit dovnitř, jít na sever a na jih. "   

	in: TravelMessage { -> mistnostTypiBystrehoRysa "Vstup do týpí je sice nízký, i tak se bez 
	větších problémů protáhneš dovnitř. " } 
	west asExit(in)
  	north = mistnostPredTypimValecnehoNacelnika 
  	south = mistnostPredTypimLovce 
;

+ typiBystrehoRysa : Enterable, CustomImmovable -> mistnostTypiBystrehoRysa 'týpí' 'týpí' *4
    "Obydlí je pomalováno světle červenou barvou a šelmou znázorněnou pod hvězdnou oblohou. 
	Obě chlopně jsou roztaženy a mezi nimi vidíš stoupat k nebi kouř, paní domácí jistě kuchtí něco dobrého. "

    cannotTakeMsg = 'A veliký nákladní kůň Kroužící orel si na sebe připevnil smyk ze dvou tyčí a týpí hrdě 
	odvezl. Nezkusíme to nejdříve na Tobě? '

    gcName = 'týpí, týpí, týpí, týpí, týpím'
    gcVocab = 'týpí/týpí/týpí/týpímu/típí/típí/típí/típí/mu/tee-pee/tee-pee/tee-pee/tee-peemu'
;

