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
    gcVocab = 'indiánku/indiánce/indiánkou'

//  gcVocab = 'bystré bystré bystrou indiánky\'s indiánčina\'s indiánčino\'s
//  losici/losici/losice/losici/losici/losicí/indiánku/indiánko/
//  indiánce/indiánkou'
;

+ Decoration 'jelenicové šaty' 'jelenicové šaty' *2
    "Kožené nebo látkové šaty jsou pro indiánské ženy typické, společně s legínami jsou opravdu univerzální a především 
    vhodné pro tak důležitou jízdu na koních. " 

    isPlural = true

    owner = bystraLosice

	notImportantMsg = 'Já jsem Ti říkal, že jí sluší, jednoduchost a krása v parádním poměru je balzámem na mužská kukadla,
    tak se dívej a nic dalšího nevymýšlej. '  

    gcName = 'jelenicových šatů, jelenicovým šatům, jelenicové šaty, jelenicových šatech, jelenicovými šaty'
    gcVocab = 'jelenicových jelenicovým jelenicovými šatů/šatům/šatech'
;

+ bystraLosiceTalking : InConversationState
    stateDesc = "Stojí a baví se s tebou. " 
    specialDesc = "{Kdoco bystraLosice} má v ruce bubínek a povídá si s tebou. "
    nextState = bystraLosiceTanci
;

+ AskTellTopic @bystraLosice
    "<.p><q>Tanečnice?</q> zeptal ses, <q>jaké je Tvé jméno?</q>

        <.p><q>Jmenuji se Bystrá losice.</q> "
;

++ bystraLosiceTanci : ConversationReadyState
    stateDesc = "Nacvičuje svůj tanec a u této kratochvíle vypadá opravdu půvabně. "
    specialDesc = "{Kdoco bystraLosice} tančí opravdu parádně, radost pohledět. "
    isInitState = true  
;
