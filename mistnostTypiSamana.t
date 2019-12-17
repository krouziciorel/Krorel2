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
 *   Týpí šamana
 */
mistnostTypiSamana : Room 'Týpí šamana' 'týpí šamana'
		"Vstupuješ do týpí místního šamana. Jako znalec kostelů ve městech bledých tváří si s úsměvem
		na rtech představuješ nabubřelou nádheru s velebným knězem, která sama žádá o pokleknutí a kajícnost.
		Tady Tě nic takového rozhodně nečeká. Letmým pohledem vidíš, že interiér je velmi skromě zařízen, 
		není zde vlastně nic neobvyklého k vidění. Nejzajímavější je šaman, muž nejspíš o něco mladší, než jsi Ty sám. 
		Ruce má pomalovány hnědou hlinkou a holou hruď červeně, vše vypadá přirozené a ladící s jeho přívětivým obličejem. 
		Hledí do ohně s rozšířenýma očima, které prozrazují nesmírné soustředění.\n 
		Můžeš jít ven. "    

	out: TravelMessage { -> mistnostPredTypimSamana "Velmi opatrně odhrnuješ kůže a vycházíš ven. " }
	east asExit(out)
;
