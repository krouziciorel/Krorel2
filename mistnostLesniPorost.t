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
 *   Lesní porost
 */
mistnostLesniPorost : Room 'Lesní porost' 'lesní porost'
		"Před Tebou se zelená poměrně řídký les, kam místní krasavice chodí sbírat klacky a dřevo na otop. 
		Topit se samozřejmě dá i jinak, my majitelé nejen hospodářských zvířat bychom o vhodnosti jejich 
		usušených produktů mohli vyprávět dlouho. Vidíš zde Tichou srnu se svojí dcerou, které pilně sbírají dary 
		lesa a při tom si zpívají. Nikam nespěchají a jak vidiš na jejich tvářích, práce jim vůbec nevadí."    

	northeast = mistnostLesniMytinaProKone 
	southwest = mistnostLesniBobule
;
