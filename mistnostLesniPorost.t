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
mistnostLesniPorost : OutdoorRoom 'Lesní porost' 'lesnímu porostu'
		"Před Tebou se zelená poměrně řídký les, kam místní krasavice chodí sbírat klacky a dřevo na otop. 
		Topit se samozřejmě dá i jinak, my majitelé nejen hospodářských zvířat bychom o vhodnosti jejich 
		usušených produktů mohli vyprávět dlouho. Vidíš zde Tichou srnu se svojí dcerou Vyjící celou noc, 
		které pilně sbírají a svazují dřevo z lesa a při tom si zpívají. Nikam nespěchají a jak vidiš na jejich tvářích, 
		práce jim vůbec nevadí.\n 
		Můžeš jít na severovýchod a na jihozápad. "     

	north: DeadEndConnector { "V lese se ztratím velmi rychle, ještě mi prosím dej nějaký čas na průzkum 
	této zajímavé osady. " }
	east asExit(north)
	south asExit(north)    
  	west asExit(north)
	northwest asExit(north)
	southeast asExit(north)
	northeast = mistnostLesniMytinaProKone 
	southwest = mistnostLesniBobule
;

+ nasbiraneDrevo : CustomImmovable 'nasbírané dřevo' 'dřevo' *4
    "Velmi šikovně svázané otepi dřeva tak, aby je žena mohla bez problémů po přivázání ke svému tělu třeba „na smyk“ 
	pohodlně dopravit až do svého příbytku. Jsou ale tyhle indiánky šikovné a pracovité, že? "

	cannotTakeMsg = 'Vím, že to vypadá zvláštně, ale tohle je ženská práce, přípravu dřeva nechám raději na odbornice. '

    gcName = 'nasbíraného dřeva, nasbíranému dřevu, nasbírané dřevo, nasbíraném dřevu, nasbíraným dřevem'
    gcVocab = 'nasbíraného nasbíranému nasbírané nasbíraném nasbíraným/dřeva/dřevu/dřevo/dřevem'
;
