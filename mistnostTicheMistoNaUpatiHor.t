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
 *   Tiché místo na úpatí hor
 */
mistnostTicheMistoNaUpatiHor : Room 'Tiché místo na úpatí hor' 'tiché místo na úpatí hor'
		"Na této vyvýšenině step končí a pomalu přechází do horských oblastí. Cítíš, jako bys zde nebo 
		na velmi podobném místě již někdy byl a lze zde tušit nějaké Tobě zatím neznámé síly. Když se otočíš kolem dokola, 
		vítá Tě nádherný pohled do všech světových stran. Taková místa si často vybírají ti, kteří touží pomocí vidění získat 
		náhled své budoucnosti, ne tak, jak to chápou bílí lidé, ale spíše pomocí symbolů vycítit, kterým směrem se v tomto životě ubírat."    

	southwest = mistnostKonskePastvinySeverneOdBizoniReky 
;
