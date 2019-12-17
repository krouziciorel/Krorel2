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
 *   Jihozápadní hranice prérie
 */
mistnostJihozapadniHranicePrerie : OutdoorRoom 'Jihozápadní hranice prérie' 'jihozápadní hranice prérie'
		"Před Tvýma očima se objevuje hranice otevřené stepi pomalu přecházející do řídkého lesa. 
		Vidíš zde jámy určené pro lov orlů, vhodně umístěné na hranici těchto dvou lokalit.\n 
		Můžeš jít na severovýchod, severozápad a na jihovýchod. " 

	atmosphereList : ShuffledEventList
	{
		[
			'Nad hlavou Ti prolétlo obrovské káně a dlouze zakvílelo. V tu ránu se objevilo další a 
			začal parádní vzdušný opeřený tanec. ',
			'Jemný vánek stepi je tak nekonečně osvěžující, chvíli se zastav a vychutnávej jej společně se mnou. ',
			'Zvláštní pocit vnímat zcela otevřenou krajinu bez viditelných hranic... ',
			'Ostré stepní slunce všechny místní bytosti nádherně opaluje. Když se díváš na odkryté hrudě místních 
			mužů a krásně opálené obličeje žen, usměješ se nad tou co nejvíce zdůrazňovanou bledostí poněkud vybledlých 
			bledých tváří. '
		]
		eventPercent = 50
		eventReduceAfter = 8
		eventReduceTo = 25
	}

	north: DeadEndConnector { "Odsud je opravdu jednoduché odcválat rychlostí větru, dej mi ale ještě čas dozvědět se více 
	o tomto zajímavém místě, zmizet mohu později. " }
	east asExit(north)
	south asExit(north)    
  	west asExit(north)
	southwest asExit(north)
  	southeast = mistnostMistoProSajenskeSlavnostiAObrady 
  	northwest = mistnostLesniBobule 
  	northeast = mistnostPredTypimZvedavehoIndiana 
;
