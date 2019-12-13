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
 *   Před týpím léčitele
 */
mistnostPredTipimLecitele : OutdoorRoom 'Před týpím léčitele' 
		'před týpí léčitele'
		"Přicházejícímu návštěvníku se na zde postaveném týpí ukáže překrásný symbol jitřní 
		hvězdy a plejád, okolo nichž krouží majestátní orel. Před stanem stojí na trojnožce 
		symbol léčitele, velmi důležité osoby pro celou vesnici. Dveře jsou otevřeny. "    
   
	in: TravelMessage { -> mistnostTipiLecitele "Vchodovými dveřmi se dostáváš dále. " }  
  	west asExit(in)
  	north = mistnostPredTipimSamana 
  	south = mistnostPredTipimMirovehoNacelnika 
  	northwest = mistnostLesniBobule 
;

