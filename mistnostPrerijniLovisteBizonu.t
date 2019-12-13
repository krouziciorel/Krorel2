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
 *   Prérijní loviště bizonů
 */
mistnostPrerijniLovisteBizonu : Room 'Prérijní loviště bizonů' 'prérijní loviště bizonů'
		"Vstupuješ na obrovskou otevřenou planinu zbrázděnou do nekonečna se táhnoucími stopami menších 
		i větších koní. Je Ti hned jasné, oč jde, odtud šajenští lovci vyjíždějí lovit bizony do širé stepi. "    

  	northwest = mistnostJizniBrodPresBizoniReku 
  	south = mistnostSusakyNaMaso 
  	west = mistnostPredTipimValecnehoNacelnika 
;
