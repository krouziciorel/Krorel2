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
 *   Místo pro šajenské slavnosti a obřady
 */
mistnostMistoProSajenskeSlavnostiAObrady : OutdoorRoom 'Místo pro šajenské slavnosti a obřady' 
	'místo pro šajenské slavnosti a obřady'
		"Přicházíš na velmi pěkné místo ze tří stran obklopené řídkým porostem, který ohraničuje 
		veliké kruhové prostranství. U okraje vidíš saunu zvanou inipi, ke které vede krátká 
		cestička zakončená nyní vyhaslým ohništěm. Před vchodem se bělá vysušená bizoní lebka, 
		která jakoby na něco čeká. Nebo na někoho... Nechybí ani malý posvátný kruh tvořený kameny. 
		Zkrátka ideální prostranství pro nejrůznější slavnosti a tance, které máš tak rád. <<first time>>
		Jak vidno, zdaleka tu nejsi sám. Muži i ženy v čilém ruchu prostranství připravují, co nevidět 
		začne nějaká jistě nesmírně zajímavá slavnost. Cítíš, že i jako cizinec jsi vítán, jen bude vhodné 
		se dobře připravit. Když vzpomínáš na Vaše slavnosti, každý, ať muž či žena, byl hezky a stylově 
		pomalován, měl na sobě ozdoby vhodné pro tanec toho, co člověk touží vyjádřit a přichystal si 
		nějaký dar pro ostatní. Žádná uniformita ani náhodou, každý vypadá jinak a každý ví, jak má vypadat 
		nejlépe, žádné poučky netřeba. Tato námaha se vždy bohatě vyplatila, z každé, opravdu každé slavnosti 
		jsi odcházel rozjařený a šťastný, což je jistě nádherný výsledek.<<only>>\n 
		Vidíš saunu, bizoní lebku, posvátný kruh a hlouček tanečníků.\n Můžeš jít na sever, severovýchod a na severozápad. "     

	atmosphereList : ShuffledEventList
	{
		[
			'Mladé dívky od kruhu týpí nespoutaně běží a divoce se řechtají, za nimi chlapci na koních a 
			snaží se je napodobit. ',
			'Krííííííííííí, malinko Tě vyleká křik vzdušného lovce užívajícího si horké proudy větru. ',
			'Tohle místo je prostě nezaměnitelné, vypadá téměř na chlup stejně jako mýtina tanců Tvých 
			minulých dní. '
		]
		eventPercent = 50
		eventReduceAfter = 6
		eventReduceTo = 25
	}

	east: DeadEndConnector { "Nejen, že bych si také rád nějakého toho bizona ulovil, ale také se potřebuji 
	dozvědět nějakou tu zajímavost od místních. " }
  	west asExit(east)
	south asExit(east)
	southeast asExit(east)
	southwest asExit(east)	
  	northwest = mistnostJihozapadniHranicePrerie 
  	northeast = mistnostSusakyNaMaso 
  	north = mistnostPredTypimStarce 
;

+ sauna : CustomImmovable 'sauna' 'sauna' *3
	"Jednoduchá stavba z vrbového proutí sloužící jako potní chýše."

	cannotTakeMsg = 'To půjde dosti těžko, proutí si mohu nasbírat kdekoliv a kameny přeci také. '

    gcName = 'saunu, sauně, sauna, sauně, saunou'
    gcVocab = 'saunu/sauně/sauna/saunou'
;

+ bizoniLebka : CustomImmovable 'bizoní lebka' 'bizoní lebka' *3
	"Stepním sluncem doběla vysušená bizoní lebka pro Tebe znamená něco posvátného a těžko uchopitelného. Bledým tvářím naopak zvěstuje něco, čeho se podvědomě obávají."

	cannotTakeMsg = 'Posvátných předmětů se určitě nebudu dotýkat, zvláště jsem-li zde na návštěvě. '

    gcName = 'bizoní lebky, bizoní lebce, bizoní lebka, bizoní lebce, bizoní lebkou'
    gcVocab = 'bizoní/lebky/lebce/lebka/lebkou'
;

+ posvatnyKruh : CustomImmovable 'posvátný kruh' 'posvátný kruh' *2
	"Fyzicky nesmírně prostý kruh sestavený z kamenů představuje v mysli cosi mnohem většího. Kruh je základ všehomíra, neboť mimo jiné zobrazuje skutečnost neustálého 
	koloběhu ve fyzickém světě."

	cannotTakeMsg = 'Jsi velmi odvážný, když se snažíš brát kameny z tohoto kruhu, nechám Tě s Tvojí odvahou a raději mizím. '

    gcName = 'posvátného kruhu, posvátnému kruhu, posvátný kruh, posvátnému kruhu, posvátným kruhem'
    gcVocab = 'posvátného posvétnému posvátný posvátným/kruhu/kruh/kruhem'
;

// hlouček tanečníků je skupina postav sloužící spíše jako dekorace, proto jí neprogramuji jako samostatnou postavu

+ hloucekTanecniku : Person 'hlouček tanečníků' 'hlouček tanečníků' *2
	"Nadšené obličeje žen a mužů nejrůznějšího věku prozrazují, že se na slavnost opravdu nesmírně těší."

	cannotTakeMsg = 'Bivoj už z tohoto světa dávno odešel, nesnaž se mu vyrovnat, nejsi on a ani to nechtěj. '

    gcName = 'hloučku tanečníků, hloučku tanečníků, hlouček tanečníků, hloučku tanečníků, hloučkem tanečníků'
    gcVocab = 'hloučku hlouček hloučkem/tanečníků'
;

++ hloucekTanecnikuGuardState: HermitActorState

    noResponse = "Ne, ne, teď je rušit nebudu. Já se totiž vůbec necítím tak příjemně jako oni, nezdá se mi být přirozené, že oni vše potřebné připravují a já tu na ně jen civím. 
	Půjdu raději také něco dělat, ostatně práce ve vsi mám dost a dost. Ale až budu mít vše na oslavu připraveno, moc se sem chci vrátit, neměl bych však zapomenout se parádně ozdobit, 
	ať mají místní krasavice nač hledět a jako lovec nesmím zapomenout vhodnou obětinu na slavnost. "

	stateDesc = "Není divu, že se ženy i muži tak těší, taková slavnost rozhodně není na pořadu každého dne. "

	specialDesc = "Natěšené tanečnice a tanečníci se již nemohou dočkat nadcházejících slavností. "

    isInitState = true
;


