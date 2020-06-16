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
	rozpuštěné černé vlasy, červeně namalované čelo a jelenicové šaty Tě opravdu přitahují. V ruce
	má malý bubínek sloužící jako doprovod snad ke každému indiánskému tanci.
	Jen ten obličej, sice na první pohled moc pěkný, ale na ten druhý trochu povýšený, vypovídá 
	o tom, že děvenka si o sobě asi dost myslí, její oči a především nos podtrhují Tvoji domněnku. "

    specialDesc = "Vidíš mladou indiánku s bubínkem nacvičující nějaký tanec, radost pohledět. "

	properName = 'Bystrá losice' 
    properNameKohoCeho = 'Bystrou losici'
    properNameKomuCemu = 'Bystré losici'
    properNameKohoCo = 'Bystrou losici'
    properNameKomCem = 'Bystré losici'
    properNameKymCim = 'Bystrou losicí'
    globalParamName = 'indiánka'
    gcName = 'mladé dívky, mladé dívce, mladou dívku, mladé dívce, mladou dívkou'
    gcVocab = 'mladé mladou dívky/dívce/dívku/dívko/dívkou/indiánky/indiánce/indiánku/indiánkou'
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

+ Decoration 'bubinek' 'bubinek' *2
    "Bubínek z pevné kůže je malý a dobře se nosí. Stačí šikovně zaťukat rukou a pokaždé se objeví nová melodie. " 

    owner = bystraLosice

	notImportantMsg = 'Pěkný, že? Necháme jej ale tanečnici, nevšilm sis, jak k ní ladí? '  

    gcName = 'bubínku, bubínku, bubínek, bubínku, bubínkem'
    gcVocab = 'bubínku/bubínek/bubínkem'
;

+ Decoration 'vlasy' 'vlasy' *2
    "Jako uhel černé vlasy se lesknou téměr až do modré barvy, připomínají Ti ty nejkrásnější ohony divokých stepních klisen. " 

    isPlural = true

    owner = bystraLosice

	notImportantMsg = 'Stačí se jen dívat a nic více. '  

    gcName = 'vlasů, vlasům, vlasy, vlasech, vlasy'
    gcVocab = 'vlasů/vlasům/vlasy/vlasech'
;

+ Decoration 'čelo' 'čelo' *4
    "Barvení čela je u indiánských kmenů velmi rozšířené a každá barva něco konkrétního znamená. " 

    owner = bystraLosice

	notImportantMsg = 'Jen se hezky dívej a to opravdu stačí. '  

    gcName = 'čelem, čelu, čelo, čele, čelem'
    gcVocab = 'čelem/čelu/čelo/čele'
;

+ bystraLosiceMluvi : InConversationState
    stateDesc = "Stojí a baví se s tebou. " 
    specialDesc = "{Kdoco bystraLosice} má v ruce bubínek a povídá si s tebou. "
    nextState = bystraLosicePracuje
;

++ bystraLosicePracuje : ConversationReadyState
    
    isInitState = true

    stateDesc = "Nacvičuje svůj tanec a u této kratochvíle vypadá opravdu půvabně. "
    specialDesc = "Vidíš mladou indiánku s bubínkem nacvičující nějaký tanec, radost pohledět. "
;

+++ bystraLosiceNastvana : HermitActorState
    noResponse = "Když si Tě náhodou všimne, pohrdavě pohodí hlavou a dává Ti jasně najevo, abys zmizel. "
    stateDesc = "Radost z Tebe opravdu nemá. "
	specialDesc = "Radost z Tebe opravdu nemá. "
;

+++ HelloTopic, StopEventList
    [
        '<q>Tanečnice,</q> zeptal ses, Kroužící orel Tě zdraví a moc se mu líbí Tvůj tanec.\b
        Dívka přestala bubnovat a tančit, aby s tebou mohla mluvit.
        <q>Hezký den, Kroužící orle, milovníci tance jsou u mě vítáni.</q>',
        '<q>Krásná tanečnice, věnuješ Kroužícímu orlu trochu času na malý rozhovor?</q> povídáš s úsměvem.\b
        <q>Zdravím Kroužícího orla!</q> říká tanečnice a dává si přestávku od svého tance.'
    ]
;

+++ ByeTopic
    "<q>Zatím nashledanou.</q> říkáš.<.p>
    <q>Ano, nashledanou.</q> říká dívka a chystá se zase nacvičovat."
;

+++ ImpByeTopic
    "Dívka krátce pokyne hlavou a vrací se ke svému tanci."
;

/*
 *   Slovník pro abstraktní témata.
 */
tTanec: Topic 'tanec/tanci';
tVesnice: Topic 'ves vesnice/vsi/vesnici';
tProchazka: Topic 'procházka vyjížďka/procházku/vyjížďku';

/*
 *   Globání témata konverzace přidaná přímo do postavy.
 */

++ AskTopic, SuggestedAskTopic @bystraLosice
    "<.p><q>Tanečnice?</q> zeptal ses. Jaké je Tvé jméno?</q>
        <.p><q>Jmenuji se Bystrá losice.</q> "

	name = 'ní'
;

++ AskTellTopic, SuggestedAskTopic @tTanec
    "<.p><q>Co je to za tanec, nikdy jsem takový neviděl a moc se mi líbí.</q>

        <.p><q>To víš, ten umím pořádně tančit jen já. Po lovu bizonů nás čeká obřad, kde jsem byla vybrána za Bílou vlčici, 
	to je velmi důležité a nesmím udělat žádnou chybu, aby se na mě nikdo nezlobil.</q> "

	name = 'tanec'
;

++ AskTellTopic, SuggestedAskTopic @tVesnice
    "<.p><q>Nechceš mi být průvodcem po vsi? Ještě to tu moc neznám.</q>

        <.p><q>Á, Kroužící orel potřebuje pomoc při seznamování. Proč ne, ráda si užiju nějakou procházku nebo raději vyjížďku, 
	na koni jezdím mnohem raději, než chodím pěšky.</q>
	<.reveal tProchazka><.topics> "

	name = 'vesnici'
;

++ AskTellTopic, SuggestedAskTopic @tProchazka
    "<.p><q>Můžeme tedy vyrazit?</q>

    <.p><q>Ale jistě, pokud chceš, budeš mít příležitost, třeba hnes a nejen k tomu. Moc ráda bych se podívala do města bledých tváří, 
	Skvrnitý ohon mi říkal, že tam prodávají moc hezké věci a i něco víc. Tady se mi líbí, ale já si chci pořádně užít, kdo mi to 
	zakáže... a její výmluvný mnohoznačný pohled znamená vše nebo vůbec nic. <<first time>>Dívka se Ti samozřejmě líbí a je naprosto jasné, 
	oč jí jde. Sice nejsi zrovna příznivcem muchlování se s někým, koho pořádně neznáš, ona se ale viditelně snaží právě o to. Sakra, ten severní 
	směr není zrovna ten, který potřebuješ, ale moc se tu nevyznáš, takže se zkrátka uvidí. Jen se necítíš právě nejlépe, ne a ne se zbavit nepříjemného 
	pocitu, že tady něco smrdí (a dívka ani kůň to opravdu nejsou). <<only>>Chceš hnedle vyrazit?</q> "

	name = 'procházku (vyjížďku)'

	isActive = gRevealed('tProchazka')
;

++ YesTopic

	topicResponse()

	{
    "<.p><q>Kroužící orle, paráda, teď je ale před tou dalekou cestou čas, abychom si užili jen my sami. Chci s Tebou být sama co nejdále odsud, tak 
	co říkáš na to, že bychom se jeli společně projet na mém plavákovi? Severně odsud mám jedno místo, kde si můžeme užít a nikdo nás obtěžovat nebude. </q>
	<.p><q>Jedeme!</q> radostně vykřikne dívčina a obratně skáče na svého plaváka. Ty si sedáš za ni, dívka ještě vykřikne <.p><q>Pořádně se mě drž!</q> a 
	lehkým cvalem frčíte prérií směrem severním. Ta teda jede a jako by četla Tvoje myšlenky s divokým úsměvem se otočí a zakřičí na Tebe <.p><q>Tak co, 
	Orle, jak se Ti moje jízda líbí? Teď Ti předvedu já, co umím a za chvíli se budeš moct ukázat i Ty, hajéééééé!</q> s řevem pobídne koně do trysku. 
	Uff, divoká příšerka každým coulem, jak vidno. Před Vámi se náhle objevuje okraj řídkého lesíka. Dívka dojede až k němu a tam prudce zastaví. Tak prudce, 
	že se zakymáčíš jak osika ve větru a škodolibý řehot Bystré losice Ti jasně ukazuje, že tady se žádného slitování nedočkáš. Oba po chvíli sesedáte z koně, 
	ten si jde vybrat vhodnou pastvu a dívka si okamžitě lehá na zem:<.p><q>Tak pojď na mě, orle a koukej se chovat jako pořádnej hřebeček.</q> Teda tohle je 
	prudká ženština, ruku na srdce, opravdu si myslíš, že jsi tohle chtěl?<.p><q>Ale dobrá, rozhodl ses s poměrně neznámou dívkou si užít, je to Tvoje rozhodnutí 
	a já je plně respektuji.</q> <.p><q>Divoká jízda způsobila vzkypění Tvé krve a Tvé tělo jedná automaticky. Vrháš se na dívku jako smyslů zbavený a jí to viditelně nevadí. 
	Při Vašem hřebčení jste si ovšem nevšimli, že tu nejste sami. Zdaleka ne sami… S namířenou puškou skáče z houští neznámý muž bledé tváře a drží Vás oba v šachu. 
	Pro Vás oba přichází dosti rychlé vystřízlivění, zvláště když muž hlasitě volá na své společníky, které sice zatím nevidíte, ale podle dupotu se velmi rychle blíží. 
	A je to tady, neznámí muži nejsou zase tak neznámí, dva z nich poznáváš jako občany Oklahoma Elko… Tak tomu říkám průser, tihle jdou určitě mimo jiné i po Tobě, 
	Tvůj útěk samozřejmě nezůstal utajen.</q><.p><q>Veliteli, našli jsme ho, teda já ho našel</q> vypíná hruď ten, který Vás nejdříve objevil. <.p><q>A má s sebou 
	jednu moc pěknou kůstku, hřebec jeden</q> zachechtá se ten, který asi bude tím osloveným velitelem. <.p><q>Toho rudocha bereme sebou za šéfem a s touhle holkou si taky užijem.</q>
	<.p><q>Ale já s Vámi ráda pojedu pánové, tenhle lump mě sem dovezl násilím.</q> říká ta mazaná nezbednice a toužebně se zahledí na velitele. Ten v mžiku pochopí 
	a zahraje dokonalé divadlo: <.p><q>Tak takhle to teda je, hajzl zdrhá z města a pak i indiánům krade pěkný holky. Tumáš, Ty svině!</q> a bolestivý kopanec přistane 
	na Tvém břiše, až se ohneš jak hadice před hadem. <.p><q>A tady je další!</q> To už se ke kopání přidávají i ostatní. Pomalu ztrácíš vědomí, ještě zaslechneš Bystrou losici, 
	jak nabízí veliteli, že jej ráda doprovodí. Poté už necítíš nic a Tvá duše pomalu opouští Tvé bývalé tělo, což je pocit, při kterém už opravdu nic nebolí...
	<.p><q>Šikovná holka, není-liž pravda? Ta Tě tedy dostala, sama má, co chce nebo co si alespoň myslí, že chce. Ale také ji čeká osud podobný Tobě... To už Tě však 
	nemusí trápit, ovšem až se znovu narodíš, pamatuj si, že dát na svojí intuici se určitě vyplatí. Jsi mrtvý, ale nebuď smutný, stejně jako v této hře, i ve skutečném životě 
	můžeš leccos znovu nastartovat a poučit se ze svých minulých chyb, no není to skvělé?</q> ";

	finishGameMsg(ftDeath, [finishOptionUndo] );
	}	
;

++ NoTopic

	topicResponse()

	{
   	"Náhle jsi se rozhodl, že takové rychlokvašky nejsou vhodné pro Tebe a stále se nemůžeš zbavit pocitu, že děláš dobře. Dívka se na Tebe škaredě zamračí:<.p><q>Ty vopelichaná příšero, 
	ať Ti všechna pera vypadají, takhle se chováš ke mně, ke mně!</q> A rozhodl jsi se naprosto správně, ani nechtěj vědět, co by se Ti stalo, kdybys odjel neznámo 
	kam... <.p><q>Chm, ženská aby si pořádnýho chlapa vyprosila někde až u Velkýho tajemství nebo já nevím kde. Tak si tady buď sám, já si najdu někoho lepšího.</q> S těmito 
	slovy pokračuje ve cviku tance (nyní však již poněkud toporněji) a dál si Tě nevšímá. ";

	bystraLosice.setCurState(bystraLosiceNastvana);
	}
;

