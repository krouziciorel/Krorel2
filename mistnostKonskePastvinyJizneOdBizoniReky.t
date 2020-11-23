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
 *   Koňské pastviny jižně od Bizoní řeky
 */
mistnostKonskePastvinyJizneOdBizoniReky : OutdoorRoom 'Koňské pastviny jižně od Bizoní řeky' 
	'koňským pastvinám jižně od Bizoní řeky'
		"Moc pěkný pás země s vysokou stepní trávou představuje ideální pastviny pro koně. 
		Takových je v okolí vesnice spousta, takže si čtyřnozí krasavci mohou vybírat pro sebe 
		tu nejlepší. Nyní jsou zde pouze dva větší koně, kteří se spokojeně pasou. 
		Jeden z nich je pomalován.<<first time>>Právě tento ozdobenec sem a tam a občas čuchne k nějaké 
		hromádce a olízne jí, snad to nebudou jeho výtvory... ale ne, to přeci dělají jen psi. <<only>>\n 
		Vidíš hromádku hlíny.
		Můžeš jít na sever, západ a na jihovýchod. "  

	atmosphereList : ShuffledEventList
	{
		[
			'Vidíš skotačící kluky závodící o překot, kdo bude první u stáda indiánských koní. ',
			'Hlasitému ržání koní pasoucích se poblíž odpovídá další, neméně hlasité, ale mnohem 
			vzdálenější. To se asi obě stáda dohadují, 
			kde je lepší pastva nebo které z nich má hezčí klisny. ',
			'Nedaleké majestátní hory na severozápadě okamžitě vzbuzují Tvojí pozornost. Obrovský hrom, 
			který od nich přichází, nevěští nic dobrého. Lidé pohybující se poblíž si jej ale vůbec nevšímaj 
			a mají pravdu, po chvíli vidíš, jak temné mraky mizejí v dáli a obloha nad kopci je opět jako vymydlená. '
		]
		eventPercent = 50
		eventReduceAfter = 6
		eventReduceTo = 25
	} 

	east: DeadEndConnector { "Ano, posadit se na koně a s větrem o závod zmizet... Rád, ještě jsem se ale nedozvěděl to, 
	co potřebuji. " }
  	south asExit(north)
	northwest asExit(north)
	northeast asExit(north)
	southwest asExit(north)		  	
	west = mistnostLesniMytinaProKone 
  	north = mistnostSeverniBrodPresBizoniReku 
  	southeast = mistnostKoupalisteUBizoniReky 
;

+ hromadkaHliny : CustomImmovable 'hromádka hlíny' 'hromádka' *3
    "Hromádka zkypřené hlíny, do které ten čtyřnohý nezbeda někdy strká nos. Když se na Tebe podívá a vyplázne svůj hnědý jazyk, 
	je to pohled k popukání. Opravdu se Ti v tomle chce hrabat? Je to nějaké mazlavé, já Ti nevím... "

	dobjFor(Dig) asDobjFor(LookIn)

            dobjFor(LookIn)
	 {
		action()
		{
			if(balicek.moved)
			{
				"V hlíně se již nic neskrývá. ";
				exit
				;
			}
				balicek.discover();
            			"Tak dobrá, zahrajeme si na krtka. Po prohrábnutí hlíny se Ti podařilo vyhrabat malý balíček tvořený převázanými listy, 
						které něco ukrývají. ";
	  }
        }

    cannotTakeMsg = 'Hlínu mohu jednoduše vzít, ale co s ní, tady se loví a žádné polní práce neznáme, na to jsme moc líní a hrdí. '

    gcName = 'hromádky, hromádce, hromádku, hromádce, hromádkou'
    gcVocab = 'hromádky/hromádce/hromádku/hromádkou'
;

++ balicek : Hidden, RestrictedContainer 'malý balíček' 'balíček' *2
    "Balíček v indiánským stylu z přírodních listů převázaný zbytkovými šlachami z ulovených zvířat. "

	validContents = [modraBarva]

            dobjFor(LookIn)
	 {
		action()
		{
			if(modraBarva.moved)
			{
				"Balíček je již prázdný. ";
				exit
				;
			}
				modraBarva.discover();
            			"Po otevření se Ti zjevila modrá barva, evidentně používaná jako ta hezká malba na strakatém koni. Tak proto tam ten lump tak často čuchal. ";
	  }
        }

    gcName = 'balíčku, balíčku, balíček, balíčku, balíčkem'
    gcVocab = 'balíčku/balíček/balíčkem'
;

+++ modraBarva : Hidden 'modrá barva' 'barva' *3
    "Barva získaná z rostliny Ávanásse se používá krom malování ke zkrášlování lidí i koní. "

    gcName = 'barvě, barvě, barva, barvě, barvou'
    gcVocab = 'modré modrá modrou/barvě/barva/barvou'
;

