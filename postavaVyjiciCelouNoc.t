#charset "utf-8"

/*
 *   Kroužící orel 2 - Indiánská vesnice
 *
 *   Pokračování prvního dílu Úprk z města naprogramované v systému TADS. 
 *   Vytvořil Luděk Šťastný s vydatnou pomocí a náměty českých textovkářů.
 */

#include <adv3.h>
#include <cs_cz.h>

/*
 *   Indiánská dívka Vyjící celou noc
 */
vyjiciCelouNoc : Person 'indiánka' 'indiánka' *3 @mistnostLesniPorost
	"Malá dívenka pobíhá mezi stromy a přitom si pobrukuje do taktu její matky. Někdy si sedne a něco tvoří na zemi, určitě je to hravá dívka. "

    specialDesc = "Malé čiperné děvče si rádo hraje, ale ani práce mu není cizí, jinak to při polodivokém způsobu života ani nejde. "
	properName = 'Vyjící celou noc' 
    properNameKohoCeho = 'Vyjící celou noc'
    properNameKomuCemu = 'Vyjící celou noc'
    properNameKohoCo = 'Vyjící celou noc'
    properNameKomCem = 'Vyjící celou noc'
    properNameKymCim = 'Vyjící celou noc'
    globalParamName = 'indiánka'
    gcName = 'indiánku, indiánce, indiánku, indiánce, indiánkou'
    gcVocab = 'indiánku/indiánce/indiánkou'
;
