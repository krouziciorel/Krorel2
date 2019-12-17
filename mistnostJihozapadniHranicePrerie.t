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
mistnostJihozapadniHranicePrerie : Room 'Jihozápadní hranice prérie' 'jihozápadní hranice prérie'
		"Před Tvýma očima se objevuje hranice otevřené stepi pomalu přecházející do řídkého lesa. 
		Vidíš zde jámy určené pro lov orlů, vhodně umístěné na hranici těchto dvou lokalit. " 

	atmosphereList : ShuffledEventList
	{
		[
			'Nad hlavou Ti prolétlo obrovské káně a dlouze zakvílelo. V tu ránu se objevilo další a 
			začal parádní vzdušný opeřený tanec. ',
			'Jemný vánek stepi je tak nekonečně osvěžující, chvíli se zastav a vychutnávej jej společně se mnou. ',
			'Ostré stepní slunce všechny místní bytosti nádherně opaluje. Když se díváš na odkryté hrudě místních 
			mužů a krásně opálené obličeje žen, usměješ se nad tou co nejvíce zdůrazňovanou bledostí poněkud vybledlých 
			bledých tváří.. '
		]
		eventPercent = 50
		eventReduceAfter = 5
		eventReduceTo = 20
	}

  	southeast = mistnostMistoProSajenskeSlavnostiAObrady 
  	northwest = mistnostLesniBobule 
  	northeast = mistnostPredTipimZvedavehoIndiana 
;
