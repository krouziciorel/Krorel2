#charset "utf-8"

/*
 *   Kroužící orel 2 - Indiánská vesnice
 *
 *   Pokračování prvního dílu Úprk z města naprogramované v systému TADS. 
 *   Vytvořil Luděk Šťastný s vydatnou pomocí a náměty českých textovkářů.
 */

#include <adv3.h>
#include <cs_cz.h>
#include <date.h>

#ifdef TADS_INCLUDE_NET
    #include <tadsnet.h>
#endif

/*
 *   Objekt versionInfo je povinný objekt, který každá hra musí mít. V něm lze
 *   vyplnit řadu základních informací o hře.
 */
versionInfo: GameID

    /* Jako ISBN u knížek, generátor: http://www.tads.org/ifidgen/ifidgen */
    IFID = '49DC1771-00E2-4EA8-942F-817869EBBC37'

    name = 'Kroužící orel 2'
    byline = 'napsal Luděk Šťastný'
    authorEmail = 'Luděk Šťastný <ludek.stastny@gmail.com>'
    desc = 'Kroužící orel 2 - Indiánská vesnice, pokračování prvního dílu Úprk z města'
    version = '1 z konce roku 2019'
    languageCode = 'cs-CZ'
    genreName = 'Divoký západ'
    licenseType = 'Freeware'

    /* Podle Plotkinovy stupnice: Merciful, Polite, Tough, Nasty, Cruel */
    forgivenessLevel = 'Polite'

    /* Co se má stát, když hráč zadá příkaz "o hře". */
    showAbout()
    {
        "<i>Kroužící orel 2</i> vás vítá!

            <.p>Tato textovka vznikla jako moje první samostatně naprogramovaná hra.
			První díl jsme vytvořili společně s Pedrem a jeho báječným TXT prostředím,
			následně jsem se seznámil se systémem TADS a díky němu a především Gaspodovi
			se mi po dlouhých peripetiích podařilo připravit hratelnou předelávku původní
			hry Exoter pro počítače ZX Spectrum. 

            <.p>Vývojařina mě chytla jako nikdy předtím, po seznámení se s jazykem Java,
			který mi TADS připomíná asi nejvíce se budu snažit programovat co nejvíce
			čistě s využitím technik zkušenějších vývojářů. 
			
            <.p>Spoustu textu i styl vývoje přebírám z báječné hry Základna na Asteroidu
			od Gaspody, zde jsem se naučil spoustu programátorských technik, některé
			z nich znám i s výborných knížek pro začátečníky od pana Pecinovského.
            Hra je vzhledem k cílovému publiku poměrně jednoduchá a základy
            ovládání vás sama provede v úvodní části. Přesto pokud jste na poli
            interaktivní fikce nováčky, mohl by vám přijít vhod podrobný návod
            pro hraní podobných her -- stačí jen napsat příkaz <<aHref('návod',
            'NÁVOD')>> na příkazové řádce.

            <.p>Příběh se ovládá psaním příkazů ve formě jednoduchých vět. Níže
            uvádím základní konstrukce příkazů, kterým příběh rozumí. Ve
            skutečnosti rozumí daleko více příkazům a daleko více formám, o
            kterých se dočtete v návodu, ale účelem tohoto souhrnu je poskytnout
            stručný přehled nejdůležitějších. Místo (objekt) dosadíte název
            jakéhokoliv předmětu, který se ve hře vyskytuje. Části příkazů v
            hranatých závorkách nejsou povinné a lomítko značí alternativní
            možnosti. V rozhovorech se kromě existujících věcí dá ptát i na
            (téma) zmíněné ve hře.

            <.p>Systémové příkazy:
            <ul>
            <li>detailní skóre</li>
            <li>ulož, nahraj, vrať tah, restart</li>
            </ul>

            Pohyb a postoje hráče:
            <ul>
            <li>s, j, v, z, sv, sz, jv, jz (pohyb ve směru světových stran)</li>
            <li>nahoru, dolů, dovnitř, ven (další směry)</li>
            <li>sedni/stoupni/lehni si [na (objekt)], vstaň, slez</li>
            </ul>
    
            Manipulace s věcmi:
            <ul>
            <li>inventář</li>
            <li>vem/polož (objekt), dej (objekt) do/na/za/pod (objekt)</li>
            <li>otevři/zavři/odemkni/zamkni (objekt)</li>
            <li>oblékni/obuj/svlékni/zuj (objekt)</li>
            <li>nasaď/sundej si (objekt)</li>
            </ul>
    
            Akce:
            <ul>
            <li>rozhlédni se, prozkoumej/přečti (objekt), koukni do/skrz
                (objekt)</li>
            <li>stiskni/pohni/zatáhni/zatlač/otoč (objekt)</li>
            <li>sněz/ochutnej/očichej (objekt)</li>
            </ul>

            Rozhovor s postavou:
            <ul>
            <li>pozdrav, rozluč se (začátek a konec rozhovoru není povinný)</li>
            <li>zeptej se na (objekt/téma), řekni o (objektu/tématu), požádej o
            (objekt), ukaž/podej (objekt)</li>
            <li>ano, ne (odpovědět na otázku položenou postavou)</li>
            <li>témata (navrhne témata, o kterých můžete mluvit, ale jen
            očividná, zdaleka ne všechna)</li>
            </ul>
    
            Navíc příběh může jednorázově nabídnout zvláštní konverzační
            možnosti mimo schéma zeptej/řekni (např. <q>Mohl by ses
            omluvit.</q>). Potom lze zadat příkaz v nabízeném tvaru rozkazovacím
            způsobem (OMLUV SE), obvykle stačí jen pár prvních slov. ";
    }

    /* Co se má stát, když hráč zadá příkaz "autoři". */
    showCredit()
    {
        "<.p>Kroužící orel 2 je textová konverzační hra vytvořená Luďkem Šťastným.

            <.p>Hra je naprogramována v systému TADS 3 od Michaela J. Robertse,
            využívám též český překlad od Gaspody.

            <.p>Poděkování si zaslouží Eric Eve za skvělou dokumentaci
            a Gaspoda za výborný český návod pro autory - začátečníky, jeho
			obětavou pomoc při řešení problémů nového programátora a možnost
			využití zdrojových kódů hry Základna na asteroidu.
            
            <.p>Na korekci textů spolupracoval Vladimír Vaďura 
			– vladimir.vadura@gmail.com, kterému děkuji za úpravu některých mých
			nejasných slovních obratů.

            <.p>Všechny postavy ve hře jsou smyšlené, v maximální možné míře se
			snažím vyjadřovat jejich postoj či emoce. Takže se za jejich názory
			prosím nezlobte, každý se vyvíjíme potřebným směrem a co platí dnes,
			nemusí platit zítra. ";
    }
;

/*
 *   Po úspěšném dohrání hry nabídneme volbu "doslov". To není standardní volba,
 *   takže ji musíme vyrobit.
 */
finishOptionAfterword: FinishOption
    doOption()
    {
        "<.p>Počítačoví pamětníci si možná všimnou, že tato hra se od běžných
            českých textových her trochu odlišuje. Zde nefunguje univerzální 
			příkaz POUŽIJ, na který je většina z nás zvyklá. Hru jsem
            naprogramoval v TADSu, jednom z nejpokročilejších systémů na tvorbu
            textových adventur, který opravdu nádherně modeluje svět kolem nás
			včetně komunikace s postavami.
 
            <.p><tab indent=4><i><tab id=t1>Luděk Šťastný<br>
            <tab to=t1>Provodín<br>
            <tab to=t1>konec roku 2019</i>";

        /* Indikujeme, že chceme opět nabídnout menu konce hry. */
        return true;
    }

    desc = "přečíst si <<aHrefAlt('doslov', 'DOSLOV', '<b>D</b>OSLOV',
        'Ukázat doslov')>>"
    responseKeyword = 'doslov'
    responseChar = 'd'
;

/*
 *   Naopak volba zajímavých možností k vyzkoušení je standardní volbou, jen
 *   musíme poskytnout její obsah.
 */

// dodělat

modify finishOptionAmusing
    doOption()
    {
        "Pár věcí, které můžete také vyzkoušet:
            <.p>
            <ul>
            \n<li>Přečíst si novinové články v tabletu nebo si zahrát hru.
            \n<li>Zkusit otevřít tablet.
            \n<li>Běžet na pásu nejvyšší rychlostí a pár tahů počkat.
            \n<li>Sledovat na hodinkách, jak běží čas.
            \n<li>Otestovat tablet nebo modul bez součástek UniDiPem.
            \n<li>Povídat si s Borisem o různých tématech.
            \n<li>Ochutnat Borisovu kávu.
            \n<li>Pokusit se zabít Borise.
            \n<li>Dojít si na záchod a vykonat potřebu.
            \n<li>Povídat si s Borisem přes dveře záchoda, třeba o kafi.
            \n<li>Zkusit si odnést něco z trezoru.
            \n<li>Hýbat ručičkami nebo nožičkami figurky.
            \n<li>Kouknout se pod Borisovu matraci.
            \n<li>Přivonět k jídlu.
            \n<li>Začichat na záchodě po té, co Boris vyleze.
            \n<li>Mámit z technika identifikační kartu několikrát, zvlášť když
            ho probudíš.
            \n<li>Když probudíš Borise, tak zavřít dveře zevnitř kajuty nebo mu
            podat nějaký předmět.
            </ul>
            <.p>";

        /* Indikujeme, že chceme opět nabídnout menu konce hry. */
        return true;
    }
;

/* ------------------------------------------------------------------------ */
/*
 *   Hráč, který je zcela ztracený, by mohl zkusit požádat o nápovědu, takže se
 *   mu pokusíme pomoci. Protože máme více zdrojů informací pro pomoc v různých
 *   situacích, nabídneme mu seznam příkazů, kterými se může ke konkrétní
 *   pomoci dostat.
 */
DefineSystemAction(Help)
    execSystemAction()
    {
        "Více informací získáte kdykoliv napsáním jednoho z následujících
            příkazů na příkazové řádce:

            \b<<aHref('o hře', 'O HŘE')>> -- jak hra vznikla a stručně o jejím
            ovládání
            \n<<aHref('autor', 'AUTOR')>> -- kdo hru vytvořil a poděkování
            \n<<aHref('rady', 'RADY')>> -- vestavěné rady a nápovědy k příběhu
            \n<<aHref('návod', 'NÁVOD')>> -- podrobný návod, jak hrát
            interaktivní fikci ";
    }
;

VerbRule(Help)
    ('ukaž' | 'ukázat' | 'zobraz' | 'zobrazit' | ) ('pomoc' | 'nápověda'
    | 'nápovědu' | 'náp')
    | ('pomož' | 'napověz' | 'pomoct') ( | 'mi')
    | 'help' : HelpAction
    verbPhrase = 'ukázat/ukazu{ješ}/ukázal{a} nápovědu'
;

/* ------------------------------------------------------------------------ */
/*
 *   Objekt gameMain je další povinný objekt, který hra musí mít. Knihovna volá
 *   jeho metody při spuštění hry.
 */
gameMain: GameMainDef

    /* Který objekt představuje hráče. */
    initialPlayerChar = me

    /* Zobrazení intra a titulku. */
    showIntro()
    {
        "<.p>Konečně je to tady, dostal jsi se do míst, která tak důvěrně znáš. 
		Na cestě jste se dost zdrželi, čemuž jsi nechtěně dopomohl i Ty, to však, 
		jak se zdá, nikomu nevadí. Do vsi jste se dostali až za tmy a dost utahaní. 
		Společníci se rozloučili a každý odešel domů, Bystrý rys Tě pozval 
		do svého týpí jako hosta, o kterého bude náležitě postaráno. Představil Tě své 
		ženě, které Vám oběma i v této hodině nabídla chutnou večeři a poté jste šli spát. 
		Odložil sis všechny svoje věci a usnul jako dřevo téměř ihned.

            <.p>A zdál se Ti sen, který sis ihned po probuzení přesně vybavil... 
			Vznášíš se nad rozpálenou prérií a proudy větru Tě nesou stále dál, stačí jen 
			máchnout křídly a obrovskou rychlostí mizíš na jiné místo, necítíš nic kromě malého 
			předmětu zavěšeného na koženém provázku okolo krku. Předmět jiskří, hýbe se ze strany 
			na stranu, ale jinak pevně drží a šňůra se ani při divokém letu nepřetrhne. Náhle padáš 
			na zem, ale dopad necítíš. Necítíš nic, jen se Ti v hlavě promítl celý Tvůj život, jsou 
			to obrázky tvořící neuvěřitelně rychle se pohybující mozaiku, Ty ale vnímáš přesně každý 
			okamžik Tvého současného bytí od dětství až do teď. Náhle vstáváš a žiješ dál.

        	<.p>To ale už vnímáš atmosféru ranního týpí a probouzející se vsi. Jsi trochu omámený svým 
			snem, co měl znamenat? Vize? Obraz současného nebo některého z minulých životů? Určitě nepřišel 
			jen tak sám od sebe, vysvětlit si jej však sám alespoň zatím nedokážeš. Rozhodně by bylo dobré 
			zeptat se někoho, kdo se v těchto věcech vyzná, zde určitě povolanou osobu najdeš. Bystrý rys 
			už je vzhůru a s úsměvem Tě zve na ranní pozdrav slunci. 

			<.p>Ha, další věc, pro kterou má smysl žít. Vždyť to nejmenší, co můžeš každý den udělat, je poděkovat 
			slunci za to, že vyšlo, vždyť je to jeho libovůle a klidně by se na takovou věc mohlo vykašlat a 
			nechat všechny tvory v temnotě... Bledé tváře toto berou jako samozřejmost a nejsou zvyklé za podobné 
			věci děkovat, právě naopak, když jsi se přestěhoval do města a podobný rituál se snažil ráno provést, 
			viděla Tě jedna starší dáma, která s vítězoslavným výkřikem nad získáním nového drbu letěla za 
			panem farářem ještě za tepla. Jak ti důchodci umí běhat, když jsou správně nažhaveni, po tomto výstupu 
			jsi se dlouho válel smíchy. Po pár dnech Tě pan farář, jinak velmi tolerantní a rozumný člověk, upozornil, 
			že podobné věci nejsou ve městě žádoucí a prosil Tě, abys jich zanechal nebo je prováděl někde, kde Tě opravdu 
			nikdo neuvidí.

            <.p>Ale konec vzpomínek, společně s Tvým hostitelem a ostatními muži vítáš nový den a ke konci věříš, 
			že bude lepší než všechny předchozí. Bystrý rys Tě následně vybízí, aby ses zatím podíval po vsi, 
			má důležité jednání s mírovým náčelníkem. Jeho týpí je Ti samozřejmě otevřené.\b";

       	    "<b>Kroužící orel 2</b>\n
            napsal Luděk Šťastný\n
            Vydání <<versionInfo.version>>. Pomoc získáte příkazem
            <<aHref('nápověda', 'NÁPOVĚDA')>>.\n\b";
    }

    /* Zobrazení rozloučení. */
    showGoodbye()
    {
        "<.p>Děkuji, že jste si zahráli hru <i>Kroužící orel 2</i>!\b";
    }
;
