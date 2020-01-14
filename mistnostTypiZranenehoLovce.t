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
 *   Týpí zraněného lovce
 */
mistnostTypiZranenehoLovce : Room 'Týpí zraněného lovce' 'týpí zraněného lovce'
		"Interiér, do někož jsi vstoupil, nepůsobí na první pohled nijak překvapivě.
		Po příchodu před sebou vidíš pověšené nejrůznější lovecké nástroje a
		pomůcky, koňskou výstroj nevyjímaje. Nejsmutnější pohled je ovšem
		na ošklivě zraněného muže, který leží na veliké bizoní dece. Rána na boku
		skutečně nevypadá dobře, přes veliké zelené listy je vidět nyní již zaschlá
		krev.\n 
		Vidíš zraněného lovce, deku, lovecké nástroje, koňskou výstroj
		Můžeš jít ven. "

	out: TravelMessage { -> mistnostPredTypimZranenehoLovce "Malým otvorem vycházíš ven. " }
	east asExit(out)
;

+ deka : CustomImmovable 'bizoní deka' 'deka' *3
   "Bizoní deka je velmi šikovná a univerzální věc dostupná v hojném množství díky nekonečným stádům. 
	Může se využít jako deka, plášť nebo sedlo. "

	cannotTakeMsg = 'Ne, deku v tomto počasí nepotřebuji a krást zde opravdu nemohu. '

    gcName = 'bizoní deky, bizoní dece, bizoní deku, bizoní dece, bizoní dekou'
    gcVocab = 'bizoní/bizoní/bizoní deky/dece/deku'
;

+ loveckeNastroje : CustomImmovable 'lovecké nástroje' 'nástroje' *2
   "Mezi loveckou výbavu majitele obydlí patří lovecký luk, šípy a dlouhý tenký oštěp. Věci jsou svázané k
	sobě pro jednodušší přemístění na koni a na první pohled dost používané, vypadá to, že lovec se činí. "

	isPlural = true

	cannotTakeMsg = 'On je ale bude ke svému životu potřebovat, to bys mu přeci neudělal. '

    gcName = 'loveckých nástrojů, loveckým nástrojům, lovecké nástroje, loveckých nástrojích, loveckými nástroji'
    gcVocab = 'loveckých/loveckým/loveckými nástrojů/nástrojům/nástroji'
;

++ Component 'luk' 'luk' *2
	"Šikovná krátká zbraň vhodná i pro střelbu z koně. "

    gcName = 'luku, luku, luk, luku, lukem'
    gcVocab = 'luku/luku/lukem'
;

++ Component 'šípy' 'šípy' *2
    "Krátké opeřené šípy určené pro stepní jezdecký luk. "

	isPlural = true

    gcName = 'šípů, šípům, šípy, šípech, šípy'
    gcVocab = 'šípů/šípům/šípy/šípy'
;

++ Component 'oštěp' 'oštěp' *2
    "Zaostřená, lehká a přesná zbraň je často využívána při lovu ryb. "

    gcName = 'oštěpu, oštěpu, oštěp, oštěpu, oštěpem'
    gcVocab = 'oštěpu/oštěpu/oštěp/oštěpem'
;

+ konskaVystroj : CustomImmovable 'koňská výstroj' 'výstroj' *3
   "Jednoduché sedlo a provazová uzda na středně velikého koně představují
    klasickou výbavu pro stepního koně. "

	cannotTakeMsg = 'My si věci opravdu nekrademe, je to hned poznat a jistě 
	tušíš, co čeká takového chmatlu. '

    gcName = 'koňské výstroje, koňské výstroji, koňská výstroj, koňské výstroji, koňskou výstrojí'
    gcVocab = 'koňské/koňské/koňskou výstroje/výstroji/výstrojí'
;

++ Component 'sedlo' 'sedlo' *4
    "Silnější deka tvoří jednoduché sedlo, které je mezi stepními národy velmi oblíbené. "

    gcName = 'sedla, sedlu, sedlo, sedlu, sedlem'
    gcVocab = 'sedla/sedlu/sedlo/sedlem'
;

++ Component 'provazová uzda' 'uzda' *3
    "Jednoduchá uzdečka pro snažší ovládání koně vypadá na první pohled jako mírně vylepšená 
	 obyčejná ohlávka sloužící k prostému vedení zvířete za lano. "

    gcName = 'provazové uzdy, provazové uzdě, provazovou uzdu, provazové uzdě, provazovou uzdou'
    gcVocab = 'provazové/provazové/provazovou uzdy/uzdě/uzdul/uzdou'
;

+ Decoration 'zelené listy' 'listy' *2
   "Poznáváš zelené listy rostliny wahíja, které dokáží tlumit krvácení. "

    isPlural = true

	notImportantMsg = 'Listy si můžeš natrhat jinde a čerstvé, tyhle jsou určeny pro ty dnes potřebnější. '

    gcName = 'zelených listů, zeleným listům, zelené listy, zelených listech, zelenými listy'
    gcVocab = 'zelených zeleným zelenými listů/listům/listy'
;
