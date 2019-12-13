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
 *   Sušáky na maso
 */
mistnostSusakyNaMaso : Room 'Sušáky na maso' 'sušáky na maso'
		"Zde mají indiánské ženy postavenu spoustu jednoduchých dřevěných sušáků, 
		kde připravují maso na pozdější použití. Vždy po lovu jsou plně obsypány čerstvým sušícím se masem, 
		které slouží jako hlavní potrava celému společenství. "    

  	north = mistnostPrerijniLovisteBizonu 
  	southwest = mistnostMistoProSajenskeSlavnostiAObrady 
  	northwest = mistnostPredTipimLovce 
;
