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
 *   Indiánský zraněný lovec
 */
zranenyLovec : Person 'zraněný lovec' 'lovec' *1 @mistnostTypiZranenehoLovce
	"Muž ve středních letech leží a odpočívá. Jeho zranění sice není
	smrtelné, jako lékař však velmi dobře víš, že dost bolestivé. "

    specialDesc = "Zraněný lovec odpočívá na dece. "
	properName = 'Malá noha' 
    properNameKohoCeho = 'Malou nohu'
    properNameKomuCemu = 'Malé noze'
    properNameKohoCo = 'Malou nohou'
    properNameKomCem = 'Malé noze'
    properNameKymCim = 'Malou nohou'
    globalParamName = 'lovec'
    gcName = 'lovce, lovci, lovce, lovci, lovcem'
    gcVocab = 'lovce/lovci/lovcem'
;

+ Decoration 'bederní rouška' 'rouška' *3
    "Tato část oděvu není nikterak ozdobena, slouží pouze k praktickým účelům. "

    owner = zranenyLovec

	notImportantMsg = 'Jedná se o běžnou součást oděvu nejen stepních kmenů. ' 

    gcName = 'bederní roušky, bederní roušce, bederní roušku, bederní roušce, bederní rouškou'
    gcVocab = 'bederní roušky/roušce/roušku/rouškou'
;

+ zranenyLovecMluvi : InConversationState
    stateDesc = "Baví se s tebou. " 
    specialDesc = "{Kdoco zranenyLovec} si s Tebou povídá. "
    nextState = zranenyLovecOdpociva
;

++ zranenyLovecOdpociva : ConversationReadyState
    
    isInitState = true

    stateDesc = "Lovec právě odpočívá. "
    specialDesc = "Vidíš odpočívajícího lovce. "
;

++ HelloTopic, StopEventList
    [
        '<q>Kroužící orel zdraví lovce.</q>\b
        Lovec na Tebe pohlédne.
        <q>Hezký den, Orle, přijmi místo v mém týpí.</q>',
        '<q>Lovče, věnuješ Kroužícímu orlu trochu času na rozhovor?</q> povídáš s lehce napjatou tváří.\b
        <q>Buď zdráv, Kroužící orle!</q> říká lovec a se zájmem na Tebe pohlédne.'
    ]
;

++ ByeTopic
    "<q>Zatím se loučím.</q> říkáš.<.p>
    <q>Ano, nashledanou.</q> říká lovec a jde zase odpočívat."
;

++ ImpByeTopic
    "Lovec se položil k odpočinku."
;
