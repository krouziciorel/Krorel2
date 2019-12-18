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
 *   Týpí válečného náčelníka
 */
mistnostTypiValecnehoNacelnika : Room 'Týpí válečného náčelníka' 'týpí válečného náčelníka'
		"Interiér tohoto týpí je velmi skromně zařízen, jak se na náčelníka válečnického spolku sluší. 
		Zadní část je pro vedro panující venku zcela vyhrnutá a ve vzniklém stínu vidíš vysokého svalnatého muže, 
		který odpočívá na své lenošce. Ten Ti pokyne, aby ses posadil naproti a řekl, co máš na srdci.\n 
		Můžeš jít ven. "    

	out: TravelMessage { -> mistnostPredTypimValecnehoNacelnika "Otvorem v týpí vycházíš ven. " }
	east asExit(out)
;



/*
 *   zde bych mohl potkat Bystrého rysa, který jedná s válečným náčelníkem
 */
