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
 *   Týpí náčelníkova příbuzného
 */
mistnostTypiNacelnikovaPribuzneho : Room 'Týpí náčelníkova příbuzného' 'týpí náčelníkova příbuzného'
		"Po vstupu do týpí si ihned všimneš jeho velmi skromného interiéru poskytujícího sice dostatečný 
		komfort k bydlení, ovšem o žádnou výstavnost se zde rozhodně nejedná. <<first time>>Na posteli sedí žena ve 
		středních letech a právě si maluje obličej žlutou barvou. Poblíž má také kostěné česadlo, péče o vlasy 
		je na pořadí dne asi hned poté. <<only>>Na momentálně vyhaslém ohništi vidíš trojnožku s malou zavěšenou plotnou. 
		<<first time>>Na ní je položena prázdná pánvice. <<only>>\n 
		Můžeš jít ven. "   

	out: TravelMessage { -> mistnostPredTypimNacelnikovaPribuzneho  "Po odhrnutí kožešiny
	se dostáváš ven. " }
	east asExit(out)
;

+ vyhasleOhniste : CustomImmovable 'vyhaslé ohniště' 'ohniště' *4
    "Momentálně vyhaslé ohniště ohraničené kameny čeká jen na toho, kdo mu dodá lesk šlehajících plamenů. "

    cannotTakeMsg = 'Bezva nápad, ale já Ti nevím, zkus nejdřív sehnat nějaký trakař na ty šutry a pak to nějak vymyslíme. '
	cannotBurnMsg = 'Ano, ohniště právě na zapálení přímo zapáleně čeká. Jsem zde však pouze hostem, tohle musím nechat
	na krásnou paní majitelku. '

    gcName = 'ohniště, ohništi, ohniště, ohništi, ohništěm'
    gcVocab = 'ohniště/ohništi/ohništěm/oheň/ohni/ohněm'
;

+ Decoration 'kovová trojnožka' 'trojnožka' *3
   "Velmi praktická kovová trojnoha zaražená do země na třech okrajích ohniště se zavěšenou plotnou. "

	notImportantMsg = 'Není potřeba takovou věc odnášet z týpí, vyhnat ze vsi se nech laskavě sám. '

    gcName = 'trojnožku, trojnožce, trojnožka, trojnožce, trojnožkami'
    gcVocab = 'trojnožku/trojnožce/trojnožka/trojnožkami trojnohu/trojnoze/trojnoha/trojnohami'
;

+ Decoration 'železná plotna' 'plotna' *3
   "Šikovný kus železa, který je zavěšen na trojnožce. Přímo na něm lze péct placky nebo položit další kovový předmět, třeba pánvici. "

	notImportantMsg = 'Já Tě chápu, Ty ale pochop mě, sběrny v našem světě zatím nemáme a tahat se s něčím takovým nebudu. '

    gcName = 'plotnu, plotně, plotna, plotně, plotnou'
    gcVocab = 'plotnu/plotně/plotna/plotnou'
;

+ panvice : CustomImmovable 'železná pánvice' 'pánvice' *3
    "Malá kovová pánvice určená k pečení nejrůznějších placek nebo malých kousků masa. "

    cannotTakeMsg = 'Ach jo, to je s Tebou ale trápení. Když už musíš stále něco brát, alespoň se zeptej. '

    gcName = 'pánvici, pánvici, pánvici, pánvici, pánvicí'
    gcVocab = 'pánvici/pánvice/pánvicí'
;
