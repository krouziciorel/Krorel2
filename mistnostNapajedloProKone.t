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
mistnostNapajedloProKone : OutdoorRoom 'Napajedlo pro koně' 'napajedlu pro koně'
		"Mělká zátočina slouží koním jako napajedlo, což je vidět ze všudypřítomných otisků kopyt, které lovce opravdu zaujmou, ani neví jak.
         Momentálně tu žádný řechták není, koním dost dobře stačí i čerstvá orosená ranní tráva. Paprsky slunce se na hladině krásně lesknou.\n Můžeš
         jít na severovýchod, východ a na jihozápad. "

  	north: DeadEndConnector { "Když teď zmizím a nic se nedozvím, ve svém hledání se nedostanu dál. " }
  	south asExit(north)
	west = mistnostPredTypimBystrehoRysa
;

+ slunce : Distant 'svítící slunce' 'slunce' *4
    "Krásně svítí nad rozpálenou stepí, vše dozlatova opaluje a ještě si stíhá hrát s vlnami řeky. "

    gcName = 'slunce, slunci, slunce, slunci, sluncem'
    gcVocab = 'slunce/slunci/sluncem'
;

+ slunecniPaprsky : Vaporous 'sluneční paprsky' 'paprsky' *2
    "Hladina řeky vypadá pod paprsky opravdu překrásně, stačí se na ní zahledět z více míst a obraz je sice podobný, ale vždy jiný. "

	isPlural = true

    gcName = 'paprsky, paprskům, paprsky, paprskům, paprsky'
    gcVocab = 'sluneční slunečním slunečními/paprsky/paprskům/paprsky'
;

+ Decoration 'koňské napajedlo' 'napajedlo' *4
   "Koně dokáží zjistit, kde je voda nejčerstvější a nejchutnější, napajedlo určitě nebudou využívat jen oni. "

	notImportantMsg = 'Já se mohu napít opravdu kdykoliv, tohle v našem příběhu nemusíme řešit. '

    gcName = 'napajedlo, napajedlu, napajedlo, napajedlu, napajedlem'
    gcVocab = 'napajedlo/napajedlu/napajedlem'
;

+ otiskyKonskychKopyt : CustomImmovable 'otisky koňských kopyt' 'otisky' *2
    "Stopovat zde by bylo nemožné, vidíš nejrůznější mozaiku těch nejmenších i největších otisků kopyt. Ale moment, jeden z nich vypadá opravdu zvláštně. "

	isPlural = true

    dobjFor(LookIn)
    {

        action()
        {
            if(otiskyKonskychKopyt.moved)
            {
                "Stop je tu moc a žádná již nevybočuje z řady. ";
                exit;
            }
            zvlastniStopa.makePresent();
            "Tady je jedna opravdu zvláštní stopa, která koním určitě nepatří. ";
        }
    }

    cannotTakeMsg = 'Už jsem viděl, že si někdo otisky doslova obtisknul do nějaké hmoty a poté je zachoval, nic vhodného ale sebou nemám. '

    gcName = 'otisků koňských kopyt, otiskům koňských kopyt, otisky koňských kopyt, otiscích koňských kopyt, otisky koňských kopyt'
    gcVocab = 'otisků otiskům otisky otiscích/koňských/kopyt'
;

+ zvlastniStopa : PresentLater, Readable, CustomImmovable 'zvláštní stopa' 'stopa' *3
    "Jedna stopa se od ostatních dost liší, je mnohem menší a vypadá trochu jako psí. Téměř se ztrácí, ale když ji sleduješ, vypadá to, že někam vede. "

        dobjFor(LookIn)
    {

        action()
        {
            if(housti.moved)
            {
                "Stopa už Ti pomohla k nalezení toho, cos potřeboval vidět. ";
                exit;
            }
            housti.makePresent();
            "Stopa končí v zarostlém houští. ";
        }
    }

	dobjFor(Read) asDobjFor(LookIn)

	specialDesc = "Podařilo se mi nalézt zajímavou stopu. "

	cannotTakeMsg = 'Stopu je možné vidět, ale s jejím sebráním to bude náročnější, pokud na tom trváš, vymysli jiný způsob. '

    gcName = 'zvláštní stopy, zvláštní stopě, zvláštní stopu, zvláštní stopě, zvláštní stopou'
    gcVocab = 'zvláštní/stopy/stopě/stopu/stopou'
;

+ housti : PresentLater, CustomImmovable, Container 'husté houští' 'houští' *4
    "Nízký keř v blízkosti řeky nevypadá nikterak zajímavě. <<first time>>Když se přibližuješ blíže, nad Tebou prolétne hejno křičících dravců a v tu ránu se z křoví vyřítí veliký šedý kojot. Když Tě zahlédne, prudce se zastaví, otočí směr a utíká neznámo kam. Uff, to byla rychlost. <<only>>"

    dobjFor(LookIn)
    {

        action()
        {
            if(bizoniKost.moved && chrestidlo.moved)
            {
                "V houští už jsi nic víc neobjevil. ";
                exit;
            }
            bizoniKost.makePresent();
            chrestidlo.makePresent();
            "Pořádně jsi prohlédl houští. A vida, kojot tady měl... co to ale je? No jedna věc je pořádná bizoní kost, ale ta druhá je také kostěná. Ale docela umně zpracovaná, kde jsi to už viděl... no jistě, na tancích se tato chřestidla z kostí upevňují na nohy, aby tanečníkům pěkně cinkala do rytmu. Ještě že ta bizoní kost byla chutnější, tahle věcička vypadá moc pěkně. ";
        }
    }

	specialDesc = "Díky stopě je na první pohled nezajímavé houští lákavé k bližšímu průzkumu. "

    gcName = 'houští, houští, houští, houští, houští'
    gcVocab = 'houští'
;

++ bizoniKost : PresentLater, Thing 'bizoní kost' 'kost' *3
    "Již značné ohlodaná bizoní kost, třeba ji ještě využiješ. "

    gcName = 'bizoní kosti, bizoní kosti, bizoní kost, bizoní kosti, bizoní kostí'
    gcVocab = 'bizoní/kosti/kost/kostí'
;

++ chrestidlo : PresentLater, Wearable 'taneční chřestidlo' 'chřestidlo' *4
    "Velmi vkusná chřestící ozdoba s řemínkem k přivázání na nohu je hezkým doplňkem tanečníků, tanec tak získá naprosto jiný ráz. "

    gcName = 'chřestidla, chřestidlu, chřestidlo, chřestidlu, chřestidlem'
    gcVocab = 'chřestidla, chřestidlu, chřestidlo, chřestidlem'
;
