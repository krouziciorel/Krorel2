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
		směšné... Po rozhovoru žena dovařila a sdělila Ti, že společně s dcerou půjdou na sběr dřeva, 
		oheň už může dohořet tak jak je. Dozvěděl jsi se, že Tvoje truhla s věcmi je umístěna v levé 
		části týpí hned za zásobou dřeva, můžeš si ji zde nechat a vždy si vzít jen to, co právě 
		potřebuješ. Jako manželův host máš právo chodit do tohoto týpí a ani s jídlem si nemusíš dělat 
		starosti, kdykoliv si můžeš přijít nabrat pokrm z kotlíku nad ohništěm. Upřímně jsi vyjádřil 
		vděčnost a slíbil, že ještě před svým odchodem dáš pozor na dohasínající ohniště. Laskavé 
		přivítání i rozhovor Ti dodal novou energii a radost z tvého konání. <<only>>Toto týpí patří 
		manželce Bystrého rysa. Ihned poznáváš interiér, na který jsi byl tak dlouho zvyklý, okamžitě si 
		uvědomuješ, kolik let jsi tato známá místa neviděl... Stavbě vévodí ohniště ležící uprostřed, 
		nad nímž se tyčí kotlík na trojnožce. Před tebou a po stranách vidíš nízké postele, lenošky, 
		indiánskou truhlu, na provazech napnutých výše jsou zavěšeny části oděvu a deky.\n Vidíš ohniště, 
		zavěšený kotlík, zásobu dřeva, postele, lenošky, provazy, části oděvu, deky a také svojí 
		truhlu.\n Můžeš jít ven. " 

	out: TravelMessage { -> mistnostPredTypimBystrehoRysa "Nízkým vstupem se opatrně protahuješ ven. " }
	east asExit(out)
;

+ ohniste : CustomImmovable 'ohniště' 'ohniště' *4
    "<<first time>>V indiánském týpí jsem zatím nikdy neviděl kamna jako u bílých lidí, na druhou stranu i 
	malý oheň dokáže krásně vytopit celý interiér. Nehledě na to, že pohled do plamene spoustu lidí přitahuje. 
	V zimě je možné mezi vnější a vnitřní plášť obydlí umístit například suchou trávu, ta interiér skvěle izoluje 
	a dá se zde žít i ve velmi náročných podmínkách. <<only>>Oheň krásně hoří a paní domu se o něj svědomitě stará. "

    cannotTakeMsg = 'Nechám oheň hořet tam, kde hoří, v zimě bych to chápal, ale nyní v parném létě štípnout celé 
	ohniště dokáže opravdu jenen ekšpert. '
	cannotBurnMsg = 'Zapalovat něco, co již hoří nedává smysl a až vyhasne, je to záležitost paní domu, tohle umění 
	si mohu cvičit někde jinde. '

    gcName = 'ohništi, ohništi, ohniště, ohništi, ohništěm'
    gcVocab = 'ohništi/ohništěm/ohniště/ohništěm/ohni/ohněm/oheň/oheň/ohni'
;

+ kotlik : RestrictedContainer, CustomImmovable 'kotlík' 'kotlík' *2
    "Poctivý želený kotlík si každá žena považuje, indiáni neumějí vyrábět předměty z kovů. A není rozhodně prázný. "

	validContents = jidloZKotliku
    cannotTakeMsg = 'Kotlík nikomu brát nebudu, tuhle věcičku si paní domácí určitě velmi cení. '

    gcName = 'kotlíku, kotlíku, kotlík, kotlíku, kotlíkem'
    gcVocab = 'kotlíku/kotlíkem/kotlík/kotlíkem'
;

++ jidloZKotliku : Hidden, CustomImmovable 'jídlo' 'jídlo' *4
    "Pečené bizoní maso nádherně voní. "

    cannotTakeMsg = 'Jíst už se mi také nechce, zvláště před tancem a upřímně řečeno i po něm si rád od něj oddychnu. 
	Brát jej sebou nemohu, slouží obytvatům týpí a jajich hostům.<<first time>>Víš co, 
	zkus se pořádně nadlábnout a pak si spolu dáme tanec Lovce nebo Orla, chci Tě vidět. <<only>>'

    gcName = 'jídlu, jídlu, jídlo, jídlu, jídlem'
    gcVocab = 'jídlu/jídlem/jídlo/jídlem'
;

+ drevo : CustomImmovable 'dřevo' 'dřevo' *4
    "Nanošené dříví z nedalekého lesíka pečlivě uspořádané v levé části týpí hned za vchodem. Krásně voní už nyní 
	a co teprve, až začne hořet a praskat v ohništi. "

    cannotTakeMsg = 'Když lapnu místním dřevo na oheň je tak pro nic za nic, někdo mě uvidí a paní domu mě asi něčím klepne, 
	nelze vyloučit, že přidá i kopnutí svým kopytem (a možná ne jen tím svým). '
	cannotBurnMsg = 'Mohu přiložit, ale paní domu mi jasně řekla, že oheň mám nechat tak jak je, nezlob pořád. '

    gcName = 'dřevu, dřevu, dřevo, dřevu, dřevem'
    gcVocab = 'dřevu/dřevem/dřevo/dřevem'
;

+ postele : Bed, CustomImmovable 'postele' 'postele' *3
    "Indiáni mají svá jednoduchá lůžka nízká, aby je netrápil kouř, když už oheň dohasíná. Jsou však stejně pohodlná jako 
	postele bělochů, když si je člověk párkrát vyzkouší. "

	isPlural = true
    cannotTakeMsg = 'Ne, postel si na záda nalež laskavě sám. '

    gcName = 'postele, postelím, postele, postelím, postelemi'
    gcVocab = 'postelím/postelemi/postelím'
;

+ lenosky : Bed, CustomImmovable 'lenošky' 'lenošky' *3
    "Lenoška představuje skládací rohož z vrbových nebo lískových prutů, která se dá jednoduše srolovat a přemístit jako vše 
	z arzenálu stepních národů. Je velmi pohodlná jak venku, tak v týpí, dá se samozřejmě použít i jako postel. "

    isPlural = true
	cannotTakeMsg = 'Lenošky slouží místním, štípnout je se sakra nevyplácí. '

    gcName = 'lenošky, lenoškám, lenošky, lonoškám, lenoškami'
    gcVocab = 'lenoškám/lenoškami/lenoškám'
;

+ provazy : CustomImmovable 'provazy' 'provazy' *2
    "V horní části týpí mezi jednotlivými tyčemi je napnuto veliké množství provazů. Jsou velmi praktické, dá se na ně něco zavěsit 
	a vysušit nebo vyudit nad otevřeným ohněm. "

	isPlural = true
    cannotTakeMsg = '<<first time>>Aha, Tebe, můj milý hráči, jistě svrbí prsty na obou rukou, aby sis vzal něco, co Ti nepatří. 
	Místní mě pustili do svého týpí a já se jím odvděčím tím, že tam něco sprostě ukradnu. Mnoho jsem o těchto věcech dumal a myslím, 
	že už znám podstatu myšlení bledých tváří. Dokáži pochopit, když se ve svém zaměstnání něčím obohatíš, ostatně pro svého zaměstnavatele 
	jsi většinou jen položka, která má něco vykonat a pak pryč s ní. Jednotlivce ale neokrádej a už vůbec ne ty, kteří Ti projevili svoji 
	důvěru, takové jednání se Ti později vrátí ještě v tomto nebo v některém z dalších životů (i když je to v pořádku, všichni se učíme 
	a nejlepší způsob naučit se nekrást je být potrestán, po vlastní zkušenosti si vezmeš situaci opravdu k srdci, beru, ale tohle si 
	raději zkoušej sám). Také nezapomínej, že se nacházíš v indiánském táboře, kde neexistuje něco jako zámek, vše je přístupné a pokud 
	se někdo projeví jako zloděj, bývá bez pardonu vyhnán ze vsi. A co potom, dokázal by sis poradit sám v divočině? <<only>>Uf, s Tebou 
	je ale trápení. Ještě jsi stále nepochopil, že já si nic cizího nevezmu? Takoví bývají zapomenuti, vyhnáni do divočiny a často sežráni 
	dravou zvěří. '

    gcName = 'provazy, provazům, provazy, provazům, provazy'
    gcVocab = 'provazům/provazy/provazům'
;

++ deky : CustomImmovable 'deky' 'deky' *3
    "Na provazech se suší deky z kůží i látek, které slouží buď k zabalení majitele, ke spaní nebo jako sedlová podložka, lze je tedy využít 
	na více činností, což je pro často se stěhující kmen klíčové. "

    isPlural = true
	cannotTakeMsg = 'Deka se na přespání nebo jako sedlová deka pod bederní roušku vždy hodí, krást je ale nebudu. '

    gcName = 'deky, dekám, deky, dekám, dekami'
    gcVocab = 'dekám/dekami/dekám'
;

++ castiOdevu : CustomImmovable 'části oděvu' 'části oděvu' *3
    "Na provazech visí části mužských i ženských indiánských oděvů, které se suší nebo udí. Uzení je činí vodě odolnými, má jen tu nevýhodu, 
	že při jejich nošení má majitel stále chuť na dobře propečené masíčko. "

    isPlural = true
	cannotTakeMsg = 'Teď je venku opravdu vedro, moje suknice bedernice mi plně vyhovuje. '

    gcName = 'části oděvu, částem oděvu, části oděvu, částem oděvu, částmi oděvu'
    gcVocab = 'částem částmi částem/oděvu/oděvu/oděvů'
;

+ truhla : Container, CustomImmovable 'truhla' 'truhla' *3
    "Pevná a bytelná součást nábytku, kterou si indiáni oblíbili jako velmi vhodnou součást svých příbytků. "

    cannotTakeMsg = 'Truhlu si odnesu až po slavnostech, dříve vesnici, nebude-li to nezbytně nutné, rozhodně neopustím. '

    gcName = 'truhlu, truhle, truhlu, truhle, truhlou'
    gcVocab = 'truhly/truhle/truhlu'
;

