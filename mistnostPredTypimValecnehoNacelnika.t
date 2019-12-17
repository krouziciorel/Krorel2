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
 *   Před týpím válečného náčelníka
 */
mistnostPredTypimValecnehoNacelnika : OutdoorRoom 'Před týpím válečného náčelníka' 
		'před týpí válečného náčelníka'
		"Před Tebou se tyčí bělostné týpí zcela bez ozdob. Před ním však vidíš jasné insignie 
		náčelníka psích bojovníků. Dveře týpí jsou otevřeny, takže můžeš vstoupit dovnitř.\n 
		Můžeš vstoupit dovnitř, jít na sever, jih a na východ. "    
   
	in: TravelMessage { -> mistnostTypiValecnehoNacelnika "Malým otvorem vstupuješ do týpí. " }  
  	west asExit(in)
  	south = mistnostPredTypimBystrehoRysa
	north = mistnostPredTypimDivkyPripravujiciSeNaTanec 
  	east = mistnostPrerijniLovisteBizonu 
;

