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
 *   Týpí Bystrého rysa
 */
mistnostTypiBystrehoRysa : Room 'Týpí Bystrého rysa' 'týpí Bystrého rysa'
		"<<first time>>Po prvním vstupu do týpí Ti v hlavě probleskne uctivý způsob, 
		jak se chovat po příchodu do indiánského příbytku, popřeješ tedy krásný nový den 
		a vysvětlíš ženě důvod svého příchodu nejen do jejího týpí, ale i do vsi. Ohniště 
		právě krásně hoří a mladá žena i s dcerou připravují nějaký chutný pokrm. Malá dcera 
		pozoruje matku a při tom provádí úklid svých věcí, sem tam něco vynese ven a zase se 
		vrací zpět. Usmívající se žena je viditelně zaujata Tvým vyprávěním a cítíš, že Tvůj 
		postup plně chápe a asi by nejednala jinak. Představí se jako Tichá srna a ukáže Ti i 
		svojí malou dceru, u níž Ti oznámí jen přezdívku Vyjící celou noc. Při tom jsi se lehce 
		usmál, u indiánů typické a vše vysvětlující označení pro malé děti by bělochům asi připadalo 
		směšné... Po krátkém rozhovoru žena dovařila a sdělila Ti, že společně s dcerou půjdou na sběr dřeva, 
		oheň už může dohořet tak jak je. Dozvěděl jsi se, že Tvoje truhla s věcmi je umístěna v levé 
		části týpí hned za zásobou dřeva, můžeš si ji zde nechat a vždy si vzít jen to, co právě 
		potřebuješ. Jako manželův host máš právo chodit do tohoto týpí a ani s jídlem si nemusíš dělat 
		starosti, kdykoliv si můžeš přijít nabrat pokrm z kotlíku nad ohništěm. Upřímně jsi vyjádřil 
		vděčnost a slíbil, že ještě před svým odchodem dáš pozor na dohasínající ohniště. Laskavé 
		přivítání i rozhovor Ti dodal novou energii a radost z tvého konání. <<only>>Toto týpí patří 
		manželce Bystrého rysa. Ihned poznáváš interiér, na který jsi byl tak dlouho zvyklý, okamžitě si 
		uvědomuješ, kolik let jsi tato známá místa neviděl... Stavbě vévodí ohniště ležící uprostřed, 
		nad nímž se tyčí kotlík na trojnožce.\n 
		Vidíš ohniště, zavěšený kotlík, v kterém je zbytek jídla, zásobu dřeva, postele, lenošky, 
		provazy, na kterých visí části oděvu a deky a také svojí truhlu.\n Můžeš jít ven. " 

	out: TravelMessage { -> mistnostPredTypimBystrehoRysa "Nízkým vstupem se opatrně protahuješ ven. " }
	east asExit(out)
;

+ ohniste : CustomImmovable 'ohniště' 'ohniště' *4
    "<<first time>>V indiánském týpí jsem zatím nikdy neviděl kamna jako u bílých lidí, na druhou stranu i 
	malý oheň dokáže krásně vytopit celý interiér. Nehledě na to, že pohled do plamene spoustu lidí přitahuje. 
	V zimě je možné mezi vnější a vnitřní plášť obydlí umístit například suchou trávu, ta interiér skvěle izoluje 
	a dá se zde žít i ve velmi náročných podmínkách. <<only>>Oheň pomalu dohasíná. "

    cannotTakeMsg = 'Nechám oheň hořet tam, kde hoří, v zimě bych to chápal, ale nyní v parném létě štípnout celé 
	ohniště dokáže opravdu jenen ekšpert. '
	cannotBurnMsg = 'Zapalovat něco, co již hoří nedává smysl a až vyhasne, je to záležitost paní domu, tohle umění 
	si mohu cvičit někde jinde. '

    gcName = 'ohniště, ohništi, ohniště, ohništi, ohništěm'
    gcVocab = 'ohniště/ohništi/ohništěm/oheň/ohni/ohněm'
;

+ drevo : CustomImmovable 'dřevo' 'dřevo' *4
    "Nanošené dříví z nedalekého lesíka pečlivě uspořádané v levé části týpí hned za vchodem. Krásně voní už nyní 
	 a co teprve, až začne hořet a praskat v ohništi. "

    cannotTakeMsg = 'Když lapnu místním dřevo na oheň je tak pro nic za nic, někdo mě uvidí a paní domu mě asi něčím 		klepne, nelze vyloučit, že přidá i kopnutí svým kopytem (a možná ne jen tím svým). '
	cannotBurnMsg = 'Mohu přiložit, ale paní domu mi jasně řekla, že oheň mám nechat tak jak je, nezlob pořád. '

    gcName = 'dřeva, dřevu, dřevo, dřevu, dřevem'
    gcVocab = 'dřeva/dřevu/dřevo/dřevem'
;

+ postele : Bed, CustomImmovable 'postele' 'postele' *3
    "Indiáni mají svá jednoduchá lůžka nízká, aby je netrápil kouř, když už oheň dohasíná. Jsou však stejně pohodlná jako postele bělochů, když si je člověk párkrát vyzkouší. "

	isPlural = true
    cannotTakeMsg = 'Ne, postel si na záda nalež laskavě sám. '

    gcName = 'postele, postelím, postele, postelích, postelemi'
    gcVocab = 'postele/postelím/postelích/postelemi'
;

+ lenosky : Bed, CustomImmovable 'lenošky' 'lenošky' *3
    "Lenoška představuje skládací rohož z vrbových nebo lískových prutů, která se dá jednoduše srolovat a přemístit jako 	  vše z arzenálu stepních národů. Je velmi pohodlná jak venku, tak v týpí, dá se samozřejmě použít i jako postel. "

    isPlural = true
	cannotTakeMsg = 'Lenošky slouží místním, štípnout je se sakra nevyplácí. '

    gcName = 'lenošek, lenoškám, lenošky, lenoškách, lenoškami'
    gcVocab = 'lenošek/lenoškám/lenošky/lenoškách/lenoškami'
;

+ Decoration 'trojnožka' 'trojnoha' *3
   "Šikovná kovová trojnožka je rozhodně trvanlivější, než klasická dřevěna a do iteriéru týpí se parádně hodí. "

	notImportantMsg = 'Tuhle věc si mohu vyrobit sám, i když jen ve dřevěném provedení, brát jí paní domácí by opravdu nedopadlo dobře. '

    gcName = 'trojnožku, trojnožce, trojnožka, trojnožce, trojnožkami'
    gcVocab = 'trojnožku/trojnožce/trojnožka/trojnožkami trojnohu/trojnoze/trojnoha/trojnohami'
;

+ kotlik : RestrictedContainer, CustomImmovable 'kotlík' 'kotlík' *2
    "Poctivý želený kotlík si každá žena považuje, indiáni neumějí vyrábět předměty z kovů. A není rozhodně prázný. "

	validContents = jidloZKotliku
    cannotTakeMsg = 'Kotlík nikomu brát nebudu, tuhle věcičku si paní domácí určitě velmi cení. '

    gcName = 'kotlíku, kotlíku, kotlík, kotlíku, kotlíkem'
    gcVocab = 'kotlíku/kotlík/kotlíkem'
;

++ jidloZKotliku : Food, CustomImmovable 'jídlo' 'jídlo' *4
    "Pečené bizoní maso nádherně voní. "

    smellDesc = "Masíčko krásně voní, je čerstvé a tak to má být. "
    tasteDesc = "Proč drobet neochutnat, čerstvě upečené maso je vždycky bašta. "

	dobjFor(Eat)
		{
		verify() { illogical('Ne, ne, před tancem se něčím tak výživným rozhodně nenacpu, potom bude času dosti.' ); }
		}

    cannotTakeMsg = 'Jíst už se mi také nechce, zvláště před tancem a upřímně řečeno i po něm si rád od něj oddychnu. 
	Brát jej sebou nemohu, slouží obytvatům týpí a jajich hostům. <<first time>>Víš co, 
	zkus se pořádně nadlábnout a pak si spolu dáme tanec Lovce nebo Orla, chci Tě vidět. <<only>>'

    gcName = 'jídla, jídlu, jídlo, jídle, jídlem'
    gcVocab = 'jídla/jídlu/jídlo/jídle/jídlem'
;

+ provazy : RestrictedContainer, CustomImmovable 'provazy' 'provazy' *2
    "V horní části týpí mezi jednotlivými tyčemi je napnuto veliké množství provazů. Jsou velmi praktické, dá se na ně 		 něco zavěsit a vysušit nebo vyudit nad otevřeným ohněm. "

	isPlural = true

	validContents = [deky, castiOdevu]

    cannotTakeMsg = '<<first time>>Aha, Tebe, můj milý hráči, jistě svrbí prsty na obou rukou, aby sis vzal něco, co Ti 	nepatří. Místní mě pustili do svého týpí a já se jím odvděčím tím, že tam něco sprostě ukradnu. Mnoho jsem o těchto 	věcech dumal a myslím, že už znám podstatu myšlení bledých tváří. Dokáži pochopit, když se ve svém zaměstnání něčím 	obohatíš, ostatně pro svého zaměstnavatele jsi většinou jen položka, která má něco vykonat a pak pryč s ní. 	 		Jednotlivce ale neokrádej a už vůbec ne ty, kteří Ti projevili svoji důvěru, takové jednání se Ti později vrátí 	  ještě v tomto nebo v některém z dalších životů (i když je to v pořádku, všichni se učíme 
	a nejlepší způsob naučit se nekrást je být potrestán, po vlastní zkušenosti si vezmeš situaci opravdu k srdci, beru, 		ale tohle si raději zkoušej sám). Také nezapomínej, že se nacházíš v indiánském táboře, kde neexistuje něco jako 		zámek, vše je přístupné a pokud se někdo projeví jako zloděj, bývá bez pardonu vyhnán ze vsi. A co potom, dokázal by 		sis poradit sám v divočině? <<only>>Uf, s Tebou je ale trápení. Ještě jsi stále nepochopil, že já si nic cizího 	  nevezmu? Takoví bývají zapomenuti, vyhnáni do divočiny a často sežráni 
	dravou zvěří. '

    gcName = 'provazů, provazům, provazy, provazech, provazy'
    gcVocab = 'provazů/provazům/provazy/provazech'
;

++ deky : CustomImmovable 'deky' 'deky' *3
    "Na provazech se suší deky z kůží i látek, které slouží buď k zabalení majitele, ke spaní nebo jako sedlová 		  podložka, lze je tedy využít 
	na více činností, což je pro často se stěhující kmen klíčové. "

    isPlural = true

	cannotTakeMsg = 'Deka se na přespání nebo jako sedlová deka pod bederní roušku vždy hodí, krást je ale nebudu. '

    gcName = 'deky, dekám, deky, dekách, dekami'
    gcVocab = 'deky/dekám/dekách/dekami'
;

++ castiOdevu : Wearable, CustomImmovable 'části oděvu' 'části oděvu' *3
    "Na provazech visí části mužských i ženských indiánských oděvů, které se suší nebo udí. Uzení je činí vodě odolnými, má jen tu nevýhodu, 
	že při jejich nošení má majitel stále chuť na dobře propečené masíčko. "

    isPlural = true

    dobjFor(Wear)
    {
        action()
        {
            "Teď je venku opravdu vedro, moje suknice bedernice mi plně vyhovuje, mimoto cizí oděvy přeci brát nikomu nebudu. ";
        }
    }

	cannotTakeMsg = 'Teď je venku opravdu vedro, moje suknice bedernice mi plně vyhovuje, mimoto cizí oděvy přeci brát 		nikomu nebudu. '

    gcName = 'částí oděvu, částem oděvu, části oděvu, částech oděvu, částmi oděvu'
    gcVocab = 'částí částem části částech částmi/oděvu'
;

+ truhla : Container, CustomImmovable 'truhla' 'truhla' *3
    "Pevná a bytelná součást nábytku, kterou si indiáni oblíbili jako velmi vhodnou součást svých příbytků. "

    cannotTakeMsg = 'Truhlu si odnesu až po slavnostech, dříve vesnici, nebude-li to nezbytně nutné, rozhodně neopustím. '

    gcName = 'truhly, truhle, truhlu, truhle, truhlou'
    gcVocab = 'truhly/truhle/truhlu/truhlou'
;

++ dolar : Thing 'dolar' 'dolar' *2
	"No to je ale náhoda, věřil jsem, že všechny peníze bylo nutné utratit za potřebnou výbavu a zbyl mi ještě jeden dolar, 
	nechápu, jak je to možné, asi to tak mělo být. "

    gcName = 'dolaru, dolaru, dolar, dolaru, dolarem'
    gcVocab = 'dolaru/dolar/dolarem'
;

++ kresadlo : PreferredIobj, Thing 'křesadlo/křesadla/křesadlu/křesadlem' 'křesadlo' *4
    "Oproti klasickému tření dřev tětivou luku výborná a mnohem rychlejší věc pro rozdělání ohně. <<first time>>Pokud máš suchý troud, 
	není pro cvičené ruce velkým problémem vykřesat jiskru, která troud zapálí, následně jej stačí položit do předem připraveného hnízda, 
	které již hoří dále. Toto velmi dobře znáš a nemáš tedy problém s rozděláváním ohně výše popsanou metodou. <<only>>"
    iobjFor(BurnWith)
    {
        preCond = [objHeld]
        verify()
        {
            /* nedovolím, aby bylo možné zapálit křesadlo křesadlem */
            if (gDobj == self)
                illogicalNow(&cannotBurnDobjWithMsg);
            nonObvious;
         }
    }

       gcName = 'křesadla, křesadlu, křesadlo, křesadle, křesadlem'
       gcVocab = 'křesadla/křesadlu/křesadlo/křesadle/křesadlem'
;

++ luk : Thing 'luk' 'luk' *2
	"Klasická zbraň, se kterou jsi se cvičil od útlého dětství. Velmi rychlá a tichá, pro zkušeného střelce i v dnešní době pistolí a pušek 
	stále účinná. "

    gcName = 'luku, luku, luk, luku, lukem'
    gcVocab = 'luku/luku/lukem'
;

++ polamaneSipy : Thing 'polámané šípy' 'polámané šípy' *2
    "Aj, jaj, všechny šípy se v truhle po divokém útěku polámaly, aby ne, když Tě po jejich koupi ve městě nenapadlo je svázat a do něčeho zabalit. 
	<<first time>>Uvědomuješ si, že na takové základní věci pomalu zapomínáš, ale život jde dál, teď to bude chtít nové. Hlavně, že vydržel luk a nic 
	s ním není. <<only>>"

	isPlural = true

    gcName = 'polámaných šípů, polámaným šípům, polámané šípy, polámaných šípech, polámanými šípy'
    gcVocab = 'polámaných polámaným polámané polámanými/šípů/šípům/šípy'
;

++ tomahawk : Thing 'tomahawk' 'tomahawk' *2
	"Menší sekerka vhodná ke zpravování kratšího dřeva nebo také šikovná na házení. Pro zkušenou ruku výborný nástroj i zbraň v jednom. "

    gcName = 'tomahawku, tomahawku, tomahawk, tomahawku, tomahawkem'
    gcVocab = 'tomahawku/tomahawk/tomahawkem'
;

++ jehla : Thing 'jehla' 'jehla' *3
    "Jehla je nepostradatelnou součástí zálesáka, který si svůj oděv, ale i hlubší rány musí dát do pořádku sám. Ve městě se bez ní obejdeš, 
	jinak ale ne. "

    gcName = 'jehly, jehle, jehlu, jehle, jehlou'
    gcVocab = 'jehly/jehle/jehlu/jehlou'
;

++ nit : Thing 'niť' 'niť' *3
    "Tenký provázek světlé barvy je ideální pro zašívání živých i neživých věcí, opravdu povedená věc vytvořená bílými lidmi. "

    gcName = 'nitě, niti, niť, niti, nití'
    gcVocab = 'nitě/niti/niť/nití'
;

++ suseneMaso : Food 'sušené maso' 'sušené maso' *4
	"Sušené maso bylo jednou z hlavních součástí Tvého jídelníčku. Mraky bizonů prohánějící se na prérii v minulosti bez jakýchkoli problémů dodávaly 
	tuto pochoutku, jeden bizon dokázal uživit dospělého lovce po dobu asi 200 dní, fantastické... Na prérijním slunci je možné usušit dlouhé pruhy za 
	několik hodin, pak se už nic nezkazí a může být uchováno opravdu velmi dlouho. "

    smellDesc = "Popravdě řečeno vůně není nic moc, tohle je sušená věc, která nemá vonět, ale vydržet. "
    tasteDesc = "Malinko jsi ochutnal, je to sušené maso jako každé jiné, které znáš již od dětství. "

	dobjFor(Eat)
	{
		action()
		{
			"Výborný nápad, sušené maso já tuze rád a je to spíš taková jednohubka, takže se nenacpu ani před divokým tancem. Nemá cenu šetřit, 
			tady na pláních je jej zatím dostatek, takže hurá na něj, mňam. ";
			inherited;
		}
	}

    gcName = 'sušeného masa, sušenému masu, sušené maso, sušeném mase, sušeným masem'
    gcVocab = 'sušeného sušenému sušené sušeném sušeným/masa/maseu/maso/masem'
;

++ mapa : Thing 'mapa' 'mapa' *3
    "Orientační mapa města Oklahoma Elko a jeho okolí. Jsou na ní vyznačeny i indiánské osady a rezervace, které Tě velmi zajímají, 
	ovšem jen obecně, nějakých 30 mil jižně od města je ta nejbližší. Ale opatrně, vše nemusí být takové jaké se zdá na první pohled. "

    gcName = 'mapy, mapě, mapu, mapě, mapou'
    gcVocab = 'mapy/mapě/mapu/mapou'
;

++ kosile : Wearable 'košile' 'košile' *3
    "Skvěle vyrobená košile z jelenice zdobená třásněmi a koňskými žíněmi. "

    dobjFor(Wear)
    {
        action()
        {
            "Nezlob se, hráči, ale už teď je mi dost vedro, na tohle je čas, až se změní počasí. A já se chci také opálit, 
			vždyť víš, že ve městě bledých tváří jsem bez košile chodit nemohl. Klidně si něco podobného vezmi na sebe sám, mě ale prosím nenuť. 
			Uznej, že dívky mají také právo užít si polonahého a pěkně vyzdoběného muže, nekaz jim tu radost. ";
        }
    }
	
    gcName = 'košile, košili, košili, košili, košilí'
    gcVocab = 'košile/košili/košilí'
;

++ leginy : Wearable 'legíny/legín' 'legíny' *2
	"Kožené nohavice zdobené ursoními ostny. Na rozdíl od těch nemožných a neforemných soudobých kalhot bledých tváří se jedná o dvě nohavice se 
	šňůrami, které se zavazují k opasku. Společně s bederní rouškou jsou ideální pro chladnější období, jsou nesmírně pohodlné a pro jízdu na koni 
	naprosto ideální. Jen si nesmím zapomenout vzít i roušku, bez ní by spodní střed Tvého těla byl poněkud více vidět. "

	isPlural = true

    dobjFor(Wear)
    {
        action()
        {
            "Odpusť, hráči, já Tě chápu, že jsi asi zvyklý na něco jiného, ale vedro je holt vedro a já patřím mezi otužilejší tvory. 
			Plus se moc moc moc chci opálit, vždyť víš, že ve městě bledých tváří jsem polonahý chodit nemohl a pohled na ty vybledlé chudáky mě zrovna netěšil. 
			Nesmíme zapomenout na naše krásné dívky, ty mě jistě ocení jen v suknici - bedernici a to nejen při tanci. ";
        }
    }

	gcName = 'legínů, legínům, legíny, legínách, legínami'
	gcVocab = 'legínů/legínům/legíny/legínách/legínami'
;

++ kozesina : Wearable 'kožešina' 'kožešina' *3
    "Výborná věc, kterou ženy z indiánských kmenů využívají na zimní doplňky. Ovšem bledé tváře bizony zabíjejí často jen kvůli ní z důvodu nějaké hloupé módy, 
	to je něco neuvěřitelného, i když já se svými zkušenostmi začínám pomalu chápat. "

    dobjFor(Wear)
    {
        action()
        {
            "Už teď je mi hic téměř na nic, nechám si ji na zimní čas. ";
        }
    }

    gcName = 'kožešiny, kožešině, kožešinu, kožešině, kožešinou'
    gcVocab = 'kožešiny/kožešině/kožešinu/kožešinou'
;


++ kozenePouzdro : RestrictedContainer 'kožené pouzdro' 'kožené pouzdro' *4
	"Zdobené kožené pouzdro na nůž, parádní práce. "

	validContents = [nuz]

    gcName = 'koženého pouzdra, koženému pouzdru, kožené pouzdro, koženém pouzdru, koženým pouzdrem'
    gcVocab = 'koženého koženému kožené koženém koženým/pouzdra/pouzdru/pouzdro/pouzdrem'
;

+++ nuz : Thing 'nůž' 'nůž' *2
	"Pěkný lovecký nůž s pevným ostřím, určitě se bude hodit. "

    gcName = 'nože, noži, nůž, noži, nožem'
    gcVocab = 'nože/noži/nůž/nožem'
;
