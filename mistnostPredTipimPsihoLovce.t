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
 *   Před týpím psího lovce
 */
mistnostPredTipimPsihoLovce : OutdoorRoom 'Před týpím psího lovce' 
		'před týpí psího lovce'
		"Před sebou vidíš bělostné týpí s motivem jelenů. Dveře jsou uzavřeny a příbytek
		je již nějaký čas nejspíše neobydlený. "    
   
	in: DeadEndConnector { "Do neznámého týpí opravdu nevstoupím, zvláště, když majitel
	bude nejpíše nějaký čas mimo domov. Zkus se zastavit později. " } 
  	west asExit(in)
  	southeast = mistnostPredTipimDivkyPripravujiciSeNaTanec 
  	northwest = mistnostPredTipimPsihoBojovnika 
	northeast = mistnostKoupalisteUBizoniReky
;

