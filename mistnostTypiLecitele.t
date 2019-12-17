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
 *   Týpí léčitele
 */
mistnostTypiLecitele : Room 'Týpí léčitele' 'týpí léčitele'
		"Vstoupil jsi do týpí místního léčitele. Na tyčích jsou rozvěšeny nejrůznější 
		léčivé byliny, nohy a peří ptáků a malé kostry zvířat tak, aby nepřekážely, 
		ale zároveň co nejpomaleji přijímaly kouř z místního ohniště. Interiér je opravdu 
		nádherně provoněn, vůně Ti připomíná apatyku jednoho léčitele, se kterým jsi se dříve 
		ve městě spřátelil. Malý oheň sotva hoří a muž ve středních letech právě mne ve svých 
		dlaních svazek bylin. Jeho žena sedí hned za ním a češe mu dlouhé havranově černé vlasy. 
		Oba na Tebe zvědavě pohlédnou.\n 
		Můžeš jít ven. "    

	out: TravelMessage { -> mistnostPredTypimLecitele "Dveřmi vycházíš ven. " }
	east asExit(out)
;
