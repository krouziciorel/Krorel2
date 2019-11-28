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
mistnostpredTipimBr : OutdoorRoom 'Před týpím Bystrého rysa' 'před týpí Bystrého rysa'
		"<<first time>>Po rozloučení s majitelem tohoto krásně vymalovaného týpí si 
		teprve nyní uvědomuješ, že se nacházíš ve vsi kmene Šajenů. Když se rozhlédneš, 
		poznáš charakteristické rysy jejich obydlí. Již v dávných dobách se jednalo o 
		přátelský kmen k lakotům, což do začátku Tvého dalšího putování určitě pomůže. 
		Jejich způsob života, zvyky a rituály jsou velmi podobné, takže jistě nebudeš 
		mít problém s dorozuměním, i když zatím Ti nezbývá nic jiného než posunková řeč. 
		Třeba ale někdo bude znát i Tvůj jazyk. <<only>>Nacházíš se před týpím Bystrého rysa. 
		Můžeš vstoupit dovnitř, jít na XXX. "    

	south = mistnostpredTipimLovce   
	in: TravelMessage { -> mistnostTipiBr "Vstup do týpí je sice nízký, i tak se bez větších 
		problémů protáhneš dovnitř. " }    
;

