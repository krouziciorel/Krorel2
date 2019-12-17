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
mistnostPredTypimLecitele : OutdoorRoom 'Před týpím léčitele' 
		'před týpí léčitele'
		"Přicházejícímu návštěvníku se na zde postaveném týpí ukáže překrásný symbol jitřní 
		hvězdy a plejád, okolo nichž krouží majestátní orel. Před stanem stojí na trojnožce 
		symbol léčitele, velmi důležité osoby pro celou vesnici. Dveře jsou otevřeny.\n 
		Můžeš vstoupit dovnitř, jít na sever, na jih a na severozápad. "  

	atmosphereList : ShuffledEventList
	{
		[
			'Okolo Tebe hrdě prochází skupina Psích bojovníků pomalovaných nádhernými válečnými 
			barvami, je to úchvatný pohled na neohrožené a nespoutané bytosti. ',
			'Vítr si divoce hraje s částí koňské hřívy, jistě si jí vypůjčil jako nespoutaný
			dar z některého týpí v okolí. ',
			'Slunce pálí tak divoce jako nikdy předtím, jak lákavé vyhledat nějaký stín. '
		]
		eventPercent = 50
		eventReduceAfter = 6
		eventReduceTo = 25
	}   
   
	in: TravelMessage { -> mistnostTypiLecitele "Vchodovými dveřmi se dostáváš dále. " }  
  	west asExit(in)
  	north = mistnostPredTypimSamana 
  	south = mistnostPredTypimMirovehoNacelnika 
  	northwest = mistnostLesniBobule 
;

