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
 *   Před týpím válečného náčelníka
 */
mistnostPredTypimValecnehoNacelnika : OutdoorRoom 'Před týpím válečného náčelníka' 
		'před týpí válečného náčelníka'
		"Před Tebou se tyčí bělostné týpí zcela bez ozdob. Před ním však vidíš jasné insignie 
		náčelníka psích bojovníků. Dveře týpí jsou otevřeny, takže můžeš vstoupit dovnitř.\n Vidíš 
		bělostné týpí bez jakýchkoliv ozdob, insignie náčelníka psích bojovníků.
		Můžeš vstoupit dovnitř, jít na sever, jih a na východ. "    
   
	in: TravelMessage { -> mistnostTypiValecnehoNacelnika "Malým otvorem vstupuješ do týpí. " }  
  	west asExit(in)
  	south = mistnostPredTypimBystrehoRysa
	north = mistnostPredTypimDivkyPripravujiciSeNaTanec 
  	east = mistnostPrerijniLovisteBizonu 
;

+ typiValecnehoNacelnika : Enterable, CustomImmovable -> mistnostTypiValecnehoNacelnika 'týpí' 'týpí' *4
    "Víš, že náčelníci nemají ve zvyku dávat najevo své bohatství, to by jim v takovéto společnosti úctu rozhodně 
	nepřineslo. Již jen venkovní vzhled je strohý, ale malebný jako téměř všechna šajenská týpí. "

    cannotTakeMsg = 'Jsi odvážný, ale stejně tak nemoudrý, můj milý hráči. '

    gcName = 'týpí, týpí, týpí, týpí, týpím'
    gcVocab = 'týpí/týpí/týpí/týpímu/típí/típí/típí/típí/mu/tee-pee/tee-pee/tee-pee/tee-peemu'
;

+ insignie : CustomImmovable 'válečné insignie' 'insignie/ozdoby' *3
	"Psí bojovníci jsou velmi zajímavá válečnická společnost. Jedná se o velmi odhodlané muže, kteří se při boji přiváží 
	na jedno místo a odrážejí útoky nepřátel stejně jako stěna odráží příboj vln. Ale nejsou to blázni, většinou v tomto 
	spolku působí jen několik let a pokud přežijí, získají si nehynoucí úctu ostatních. <<first time>>Je to zajímavé, před 
	očima se Ti náhle zjeví bojová scéna, v níž stojí řada mužů s provazy na kopích zapíchnutých do země a za nimi se celá 
	vesnice balí a co nejrychleji mizí. Muži padají a někteří zase vstanou, jiní však již nikoliv. Ale jejich řada vydrží drtivý 
	nápor nepřátel, kteří nakonec v hrůze prchají zastrašeni nejen odvahou, ale také strašlivým výrazem v očích těchto mužů. 
	Bojové šílenství jako vyšité, většina těchto Psích mužů však přežije a po boji následuje své blízké. Pomalu a hrdě, pohrdajíce smrtí, 
	tito muži, i když to tak nevypadá, se ve vývoji své duše posunou o notný kus dál. Vždyť i tak strašlivá věc jako boj může sice přinést 
	další touhu po krvi, ale také poznání nesmyslnosti tohoto konání. <<only>>"

	cannotTakeMsg = 'Já psí bojovník nejsem a asi nikdy nebudu. Pokud tyto odznaky seberu, nedopadnu dobře, to se vrrr. '

    gcName = 'insignii, insignii, insignie, insignii, insignií/ozdobě, ozdobě, ozdoba, ozdobě, ozdobou'
    gcVocab = 'insignii/insignie/insignií/ozdobě/ozdoba/ozdobou'
;

