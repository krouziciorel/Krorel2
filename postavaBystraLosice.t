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
 *   Indiánská žena Bystrá losice
 */
bystraLosice : Person 'indiánka' 'indiánka' *3 @mistnostPredTypimDivkyPripravujiciSeNaTanec
	"Opravdová fešanda na první pohled, musíš uznat, že krásné dlouhé momentálně 
	rozpuštěné černé vlasy, červeně namalované čelo a jelenicové šaty Tě opravdu přitahují. 
	Jen ten obličej, sice na první pohled moc pěkný, ale na ten druhý trochu povýšený, vypovídá 
	o tom, že děvenka si o sobě asi dost myslí, její oči a především nos podtrhují Tvoji domněnku. "

    specialDesc = "Mladá indiánka stojí před týpím. "
	properName = 'Bystrá losice' 
    properNameKohoCeho = 'Bystrou losici'
    properNameKomuCemu = 'Bystré losici'
    properNameKohoCo = 'Bystrou losici'
    properNameKomCem = 'Bystré losici'
    properNameKymCim = 'Bystrou losicí'
    globalParamName = 'indiánka'
    gcName = 'indiánku, indiánce, indiánku, indiánce, indiánkou'
    gcVocab = 'indiánku/indiánce/indiánkou/indiánce'
;
