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

  	southeast = mistnostMistoProSajenskeSlavnostiAObrady 
  	northwest = mistnostLesniBobule 
  	northeast = mistnostPredTipimZvedavehoIndiana 
;
