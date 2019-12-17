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
 *   Před týpím náčelníkova příbuzného
 */
mistnostPredTypimNacelnikovaPribuzneho : OutdoorRoom 'Před týpím náčelníkova příbuzného' 
		'před týpí náčelníkova příbuzného'
		"Před Tebou se tyčí větší, ale bělostné týpí bez ozdob se štítem na trojnožce. 
		Vchodové dveře jsou otevřeny a návštěva je tudíž vítána.\n 
		Můžeš vstoupit dovnitř, jít na sever a na jih. "     
   
	in: TravelMessage { -> mistnostTypiNacelnikovaPribuzneho "Opatrně odhrnuješ kožešinu 
	a vstupuješ do týpí. " }  
  	west asExit(in)
  	north = mistnostPredTypimMirovehoNacelnika 
  	south = mistnostPredTypimZvedavehoIndiana
;

