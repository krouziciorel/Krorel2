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
mistnostPredTypimSamana : OutdoorRoom 'Před týpím šamana' 
		'před týpí šamana'
		"Přicházíš před stan, na kterém Tě nesmírně zaujaly úzké kosočtverce značící symboly 
		lučních kobylek spojené s okusováním trávy bizony. To nebude jen tak obyčejné týpí, vzpomínáš si, 
		že šaman Vašeho kmene právě takto popisoval obydlí svého „kolegy“ ve spřátelené šajenské osadě. 
		Dveře týpí jsou pootevřené a osazenstvo bude přítomné, neboť úzkým otvorem z vrcholu týpí uniká jemný kouř.\n 
		Můžeš vstoupit dovnitř, jít na severovýchod a na jih. "     

	atmosphereList : ShuffledEventList
	{
		[
			'Všiml sis divoce pomalovaného muže, který, když Tě spatřil, zmateně ustupuje. Ano, je to on, pokud jej 
			pozdravíš slovy Dobrý den, odpoví Ti Hezký večer, po zeptání se, kam má namířeno, ukazuje k východu slunce a 
			přitom jde na západ… Aha, to bude asi opačník, nesmírně zajímavý zjev mnoha indiánských táborů. ',
			'Půvabný a přesto nespoutaný smích se ozývá z nedalekého obydlí. ',
			'Zatoulaný kůň na Tebe hledí jako by Ti chtěl něco říct, poté pohodí hřívou a tryskem prchá do stepi za
			svými řechtajícími soudruhy a soudružkami. '
		]
		eventPercent = 50
		eventReduceAfter = 6
		eventReduceTo = 25
	}
   
	in: TravelMessage { -> mistnostTypiSamana "Odhrnuješ zvláštními symboly pokrytou
	kožešinu a vstupuješ dále. " }  
  	west asExit(in)
  	northeast = mistnostPredTypimPsihoValecnika 
  	south = mistnostPredTypimLecitele 
;

