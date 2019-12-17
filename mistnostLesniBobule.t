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
 *   Lesní bobule
 */
mistnostLesniBobule : Room 'Lesní bobule' 'lesní bobule'
		"Příjemné tiché místo na kraji lesa, kde se modrá spousta vonících a na chuť jistě velmi zajímavých plodin. 
		Bobule jsou pořádně veliké a sbírat je bude určitě jednodušší než barvou podobné borůvky. Ale to nejpříjemnější 
		je rozverná skupina mladých dívek, které bobule sbírají a právě zpívají nějakou ženskou píseň."    

  	southeast = mistnostJihozapadniHranicePrerie 
  	east = mistnostPredTipimLecitele
	northeast = mistnostLesniPorost
;
