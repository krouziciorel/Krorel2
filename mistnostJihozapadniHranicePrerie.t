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
 *   Jihozápadní hranice prérie
 */
mistnostJihozapadniHranicePrerie : OutdoorRoom 'Jihozápadní hranice prérie' 'jihozápadní hranice prérie'
		"Před Tvýma očima se objevuje hranice otevřené stepi pomalu přecházející do řídkého lesa. 
		Vidíš step, les a jámy určené pro lov orlů, vhodně umístěné na hranici místních dvou lokalit.\n 
		Můžeš jít na severovýchod, severozápad a na jihovýchod. " 

	atmosphereList : ShuffledEventList
	{
		[
			'Nad hlavou Ti prolétlo obrovské káně a dlouze zakvílelo. V tu ránu se objevilo další a 
			začal parádní vzdušný opeřený tanec. ',
			'Jemný vánek stepi je tak nekonečně osvěžující, chvíli se zastav a vychutnávej jej společně se mnou. ',
			'Zvláštní pocit vnímat zcela otevřenou krajinu bez viditelných hranic... ',
			'Ostré stepní slunce všechny místní bytosti nádherně opaluje. Když se díváš na odkryté hrudě místních 
			mužů a krásně opálené obličeje žen, usměješ se nad tou co nejvíce zdůrazňovanou bledostí poněkud vybledlých 
			bledých tváří. '
		]
		eventPercent = 50
		eventReduceAfter = 8
		eventReduceTo = 25
	}

	north: DeadEndConnector { "Odsud je opravdu jednoduché odcválat rychlostí větru, dej mi ale ještě čas dozvědět se více 
	o tomto zajímavém místě, zmizet mohu později. " }
	east asExit(north)
	south asExit(north)    
  	west asExit(north)
	southwest asExit(north)
  	southeast = mistnostMistoProSajenskeSlavnostiAObrady 
  	northwest = mistnostLesniBobule 
  	northeast = mistnostPredTypimZvedavehoIndiana 
;

+ Decoration 'step' 'step' *3
    "Obrovská travnatá plocha vyvolává pocit nekonečnosti všude kolem nás stejně jako pohled na noční oblohu. " 

	notImportantMsg = 'Step vše ostatní, než vítr a vzdouvající se trávu, vesele ignoruje a ani se jí nedivím. '  

    gcName = 'stepi, stepi, step, stepi, stepí'
    gcVocab = 'stepi/step/stepí'
;

+ Decoration 'les' 'les' *2
    "Stromy jsou od sebe poměrně dost vzdálné a není divu, stepní tráva není žádné ořezávátko a jen nerada se nechává zardousit někým jiným. " 

	notImportantMsg = 'Lesy, i když malé a řídké, jsou pro stepní národy velmi důležité, paliva a tyčí na obydlí není nikdy nazbyt. '  

    gcName = 'lesu, lesa, les, lesu, lesem'
    gcVocab = 'lesu/lesa/les/lesem'
;

+ jamy : Bed, CustomImmovable 'jámy' 'jámy' *3
   "Lov orlů je nebezpečná, ale pro indiány potřebná věc. Probíhá tak, že si lovec lehne do předem vyhrabané jámy a pomocí návnady orla přiláká. 
	Ten přilétne, začne žrát a lovec mu musí zakoutit krkem, není to žádná legrace... "

	isPlural = true

	cannotTakeMsg = 'Vykopanou jámu by byli schopni vzít sebou jen bohové, pokud nějací jsou, až se jím stanu, zkusíme to ještě jednou. '

    dobjFor(LieOn)
    {
        check()
        {
            if(!navnada.isIn(me) && !nuz.isIn(me))
            {
                "Orla musím nejen na něco chytit, ale také mít šikovný předmět na zpracování masa a peří, nic nesmí zůstat nevyužito. ";
                exit;
            }      
        }
        action()
        {
            if(!moved)
                "Takže Ty se opravdu nebojíš lovu orlů, Kroužící orle? Škoda, že nemáš skutečné perutě a nemůžeš tak začít pravý vzdušný souboj, 
	toto je jen jeho malá napodobenina. Ale budiž, lehám si do jámy, přikrývám se a vystrčím návnadu trochu ven. Po nějakém čase skutečně slyším 
	šustění křídel a nějaký opeřenec si začíná pochutnávat na návnadě. Teď, povedlo se mi jej chytit za nohy, stáhnu jej dolů a rychle mu zakroutím krkem. 
	Byla to rychlost a dobře tak pro mě, orel je docela kolos a ďobanec od něj není nic příjemného. Trochu otřesen vylézám ven a děkuji zvířeti 
	za jeho život, on se na mě nezlobí, pokud jej zabiji s čistým úmyslem, některá zvířata jsou na světě proto, aby nás lidi živila a s tím nic nenaděláme.
	Čerstvě uloveného opeřence hnedle zpracovávám a vida, mám parádní orlí maso, perutě i jednotlivá pera. ";
			orliMaso.makePresent();
			orliPerute.makePresent();
			orliPera.makePresent();
			orliLetky.makePresent();
            inherited;
        }  
    }
    dobjFor(SitOn) asDobjFor(LieOn)
    dobjFor(StandOn) asDobjFor(SitOn)

    gcName = 'jámy, jámám, jámy, jámách, jámamy'
    gcVocab = 'jámy/jámám/jámách/jámamy'
;

++ orliMaso : PresentLater, Thing 'orlí maso' 'orlí maso' *4
    "Orlí maso je výtečnou pochoutkou, můžeš jej obětovat jako dík úspěšnému lovu nebo někomu věnovat. "

    gcName = 'orlímu masu, orlího masa, orlí maso, orlím mase, orlím masem'
    gcVocab = 'orlímu orlího orlí orlím masu/masa/maso/mase/masem'
;

++ orliPerute : PresentLater, Thing 'orlí perutě' 'orlí perutě' *3
    "Čerstvě získané orlí perutě představují nádhernou ozdobu tanečníka tančícího krásný tanec tohoto majestátního opeřence. "

	isPlural = true

    gcName = 'orlím perutím, orlích perutí, orlí perutě, orlích perutích, orlími perutěmi'
    gcVocab = 'orlím orlích orlí orlími perutím/perutí/perutě/perutích/perutěmi'
;

++ orliPera : PresentLater, Thing 'orlí pera' 'orlí pera' *4
    "Orlí pera jsou odznakem válečníka a jistě Ti budou slušet. Všiml sis, že někteří šajenští muži nosí pera vraní, což je správné, 
	každý máme jiný vkus. Mohu jen doporučit, v kombinaci s krásnými dlouhými vlasy vypadají skvěle. "

	isPlural = true

    gcName = 'orlím perům, orlích per, orlí pera, orlích perech, orlími pery'
    gcVocab = 'orlím orlích orlí orlími/per/pera/perech/pery'
;

++ orliLetky : PresentLater, Thing 'orlí letky' 'orlí letky' *4
    "Letky dravců jsou vhodné k výrobě šípů, i když jsou, pravda, dosti veliké. Ale použít je k této činnosti lze a to je hlavní. "

	isPlural = true

    gcName = 'orlím letkám, orlích letek, orlí letky, orlích letkách, orlími letkami'
    gcVocab = 'orlím orlích orlí orlími letkám/letek/letky/letkách/lektami'
;
