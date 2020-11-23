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
mistnostTicheMistoNaUpatiHor : OutdoorRoom 'Tiché místo na úpatí hor' 'tichému místu na úpatí hor'
		"Na této vyvýšenině step končí a pomalu přechází do horských oblastí. Cítíš, jako bys zde nebo 
		na velmi podobném místě již někdy byl a lze zde tušit nějaké Tobě zatím neznámé síly. Když se 
		otočíš kolem dokola, vítá Tě nádherný pohled do všech světových stran. Taková místa si často 
		vybírají ti, kteří touží pomocí vidění získat náhled své budoucnosti, ne tak, jak to chápou bílí 
		lidé, ale spíše pomocí symbolů vycítit, kterým směrem se v tomto životě ubírat.\n 
		Můžeš jít na jihozápad. "      

	atmosphereList : ShuffledEventList
	{
		[
			'Jako bys na tomto místě již v minulosti byl, ale ne a ne si vzpomenout. ',
			'Hejno dravců táhle zakvílelo, provedlo parádní otočku a zmizelo kamsi nad nekonečnou planinu. ',
			'Je vize opravdu tak důležitá? Kdo ví, lidé Tvého a nejen Tvého kmene však tomu vesměs věří, 
			kdo však ví, kde je pravda, když pravdu máme každý tu svoji ',
			'Zde se bude jistě krásně odpočívat, stín v horkém dni nejlépe spojený s koupelí je tak lákavý. '
		]
		eventPercent = 50
		eventReduceAfter = 8
		eventReduceTo = 25
	}    

	north: DeadEndConnector { "Mohl bych se vydat pryč, nejdříve mi však dovol, abych vesnici pořádně prozkoumal 
	a co nejvíce se dozvěděl. " }
	east asExit(north)
	south asExit(north)    
  	west asExit(north)
	northeast asExit(north)
	northwest asExit(north)
	southeast asExit(north)
	southwest = mistnostKonskePastvinySeverneOdBizoniReky 
;

