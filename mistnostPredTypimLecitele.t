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
 *   Před týpím léčitele
 */
mistnostPredTypimLecitele : OutdoorRoom 'Před týpím léčitele' 
		'před týpí léčitele'
		"Přicházejícímu návštěvníku se na zde postaveném týpí ukáže překrásný symbol jitřní 
		hvězdy a plejád, okolo nichž krouží majestátní orel. Před stanem stojí symbol léčitele, 
		velmi důležité osoby pro celou vesnici. Dveře jsou otevřeny.\n 
		Můžeš vstoupit dovnitř, jít na sever, na jih a na severozápad. "  

	atmosphereList : ShuffledEventList
	{
		[
			'Okolo Tebe hrdě prochází skupina Psích bojovníků pomalovaných nádhernými válečnými 
			barvami, je to úchvatný pohled na neohrožené a nespoutané bytosti. ',
			'Vítr si divoce hraje s částí koňské hřívy, jistě si jí vypůjčil jako nespoutaný
			dar z některého týpí v okolí. ',
			'Slunce pálí tak divoce jako nikdy předtím, jak lákavé vyhledat nějaký stín nebo vodu. '
		]
		eventPercent = 50
		eventReduceAfter = 6
		eventReduceTo = 25
	}   
   
	in: TravelMessage { -> mistnostTypiLecitele "Vchodovými dveřmi se dostáváš dále. " }  
  	west asExit(in)
  	north = mistnostPredTypimSamana 
  	south = mistnostPredTypimMirovehoNacelnika 
  	northwest = mistnostLesniBobule 
;

+ typiLecitele : CustomImmovable 'týpí' 'týpí' *4
    "Na pohled opravdu překrásná stavba, jejíž umně vyvedená kresba uklidňuje již na první pohled. Při
	pohledu na orlí kresbu si nejsem ouplně jistý, ale cítím, že pro mě a mé budoucí činy má veliký význam. "

    cannotTakeMsg = 'To opravdu ne, nikdy nevím, kdy se i mně léčitel může hodit, nenechavče. '

    gcName = 'týpí, týpí, týpí, týpí, týpím'
    gcVocab = 'týpí/týpí/týpí/týpímu/típí/típí/típí/típí/mu/tee-pee/tee-pee/tee-pee/tee-peemu'
;

+ Decoration 'orlí kresba' 'orlí malba/obraz/obrázek' *3
   "Král vzduchu vše vidí a slyší, nic mu nezůstává utajeno. Ani mě by nemělo, i když orel jsem jen podle jména. "

	notImportantMsg = 'Ne, ne, kresba na mě působí příliš příjemným dojmem, než abych se pokusil o něco, čím bych
	jí jakkoliv ublížil. '

    gcName = 'trojnožku, trojnožce, trojnožka, trojnožce, trojnožkou'
    gcVocab = 'trojnožku/trojnožce/trojnožka/trojnožkou'
;

+ symbol : CustomImmovable 'symbol' 'symbol' *2
	"Svazek sušených bylin je svázán tak šikovně, aby zpodobňoval letícího orla. Opravdu velmi zajímavé, jako by sis 
	na něco podobného pamatoval... Ne, nedokážeš si vzpomenout, alespoň zatím ne. "

	cannotTakeMsg = 'Prosím nezapomeň, že tady se alespoň zatím o žádný kapitalizmus nejedná. Léčitele tudíž neberu jako svoji 
	konkurenci, ale jako někoho, s kým bych se rád seznámil. Nechovej se tržně, buržouste jeden. '

    gcName = 'štítu, štítu, štít, štítu, štítem'
    gcVocab = 'štítu/štít/štítem'
;
