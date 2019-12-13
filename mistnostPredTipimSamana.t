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
 *   Před týpím šamana
 */
mistnostPredTipimSamana : OutdoorRoom 'Před týpím šamana' 
		'před týpí šamana'
		"Přicházíš před stan, na kterém Tě nesmírně zaujaly úzké kosočtverce značící symboly 
		lučních kobylek spojené s okusováním trávy bizony. To nebude jen tak obyčejné týpí, vzpomínáš si, 
		že šaman Vašeho kmene právě takto popisoval obydlí svého „kolegy“ ve spřátelené šajenské osadě. 
		Dveře týpí jsou pootevřené a osazenstvo bude přítomné, neboť úzkým otvorem z vrcholu týpí uniká jemný kouř. "    
   
	in: TravelMessage { -> mistnostTipiSamana "Odhrnuješ zvláštními symboly pokrytou
	kožešinu a vstupuješ dále. " }  
  	west asExit(in)
  	northeast = mistnostPredTipimPsihoValecnika 
  	south = mistnostPredTipimLecitele 
;

