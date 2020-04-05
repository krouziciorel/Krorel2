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
 *   Napajedlo pro koně
 */
mistnostNapajedloProKone : OutdoorRoom 'Napajedlo pro koně' 'napajedlo pro koně'
		"Mělká zátočina slouží koním jako napajedlo, což je vidět ze všudypřítomných otisků kopyt, které lovce opravdu zaujmou, ani neví jak. 
		Momentálně tu žádný řechták není, koním dost dobře stačí i čerstvá orosená ranní tráva. Paprsky slunce se na hladině krásně lesknou.\n 
		Můžeš jít na severovýchod, východ a na jihozápad. "   

  	north: DeadEndConnector { "Když teď zmizím a nic se nedozvím, ve svém hledání se nedostanu dál. " }
  	south asExit(north)
	west asExit(north)
	northwest asExit(north)
	southeast asExit(north)
	southwest = mistnostLesniMytinaProKone 
  	northeast = mistnostKonskePastvinySeverneOdBizoniReky 
  	east = mistnostSeverniBrodPresBizoniReku
;

+ slunce : Distant 'slunce' 'slunce' *4
    "Krásně svítí nad rozpálenou stepí, vše dozlatova opaluje a ještě si stíhá hrát s vlnami řeky. "   

    gcName = 'slunce, slunci, slunce, slunci, sluncem'
    gcVocab = 'slunce/slunci/sluncem'
;

+ slunecniPaprsky : Vaporous 'paprsky' 'sluneční paprsky' *2
    "Hladina řeky vypadá pod paprsky opravdu překrásně, stačí se na ní zahledět z více míst a obraz je sice podobný, ale vždy jiný. "   

	isPlural = true

    gcName = 'paprsky, paprskům, paprsky, paprskům, paprsky'
    gcVocab = 'sluneční slunečním slunečními/paprsky/paprskům/paprsky'
;

+ Decoration 'napajedlo' 'napajedlo' *4
   "Koně dokáží zjistit, kde je voda nejčerstvější a nejchutnější, napajedlo určitě nebudou využívat jen oni. "

	notImportantMsg = 'Já se mohu napít opravdu kdykoliv, tohle v našem příběhu nemusíme řešit. '

    gcName = 'napajedlo, napajedlu, napajedlo, napajedlu, napajedlem'
    gcVocab = 'napajedlo/napajedlu/napajedlem'
;

+ otiskyKonskychKopyt : Container 'otisky' 'otisky koňských kopyt' *2
    "Stopovat zde by bylo nemožné, vidíš nejrůznější mozaiku těch nejmenších poníkových i mohutných těžkých stop. Ale moment, jedna je taková zvláštní. "

	isPlural = true

    dobjFor(LookIn)
    {
        
        action()    
        {
            if(zvlastniStopa.moved)
            {
                "Stop je tu moc a žádná již nevybočuje z řady. ";
                exit;
            }
            zvlastniStopa.makePresent();
            "Tady je jedna opravdu zvláštní stopa, která koním určitě nepatří. ";
        }
    }

	dobjFor(Examine) asDobjFor(LookIn)

    gcName = 'otisků koňských kopyt, otiskům koňských kopyt, otisky koňských kopyt, otiscích koňských kopyt, otisky koňských kopyt'
    gcVocab = 'otisků otiskům otisky otiscích/koňských/kopyt'
;

++ zvlastniStopa : PresentLater, CustomImmovable, Container 'zvláštní stopa' 'zvláštní stopa' *3
    "Jedna stopa se od ostatních dost liší, je mnohem menší a vypadá trochu jako psí. Téměř se ztrácí, ale když ji sleduješ, vede do nedalekého houští. "

	cannotTakeMsg = 'Stopy je možné vidět, ale s jejich sbíráním to bude náročnější, pokud na tom trváš, vymysli jiný způsob. '

    gcName = 'zvláštní stopy, zvláštní stopě, zvláštní stopu, zvláštní stopě, zvláštní stopou'
    gcVocab = 'zvláštní/stopy/stopě/stopu/stopou'
;

//OK, funguje ale jen koukni se do otisků, nikoliv na otisky
