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
 *   Sušáky na maso
 */
mistnostSusakyNaMaso : OutdoorRoom 'Sušáky na maso' 'sušáky na maso'
	   "Zde mají indiánské ženy postavenu spoustu jednoduchých dřevěných sušáků, 
		kde připravují maso na pozdější použití. Vždy po lovu jsou plně obsypány čerstvým sušícím se masem, 
		které slouží jako hlavní potrava celému společenství.\n 
		<<first time>>Trochu bokem visí prorostlá flákota masa, která slouží jako 
		lákladlo pro letící dravce. Stvoření země se při sušení a hemžení pracovitých žen drží dále, vzdušní 
		lovci jsou však troufalejší, proto takové opatření. <<only>>
		Můžeš jít na sever, severozápad a na jihozápad.\n Vidíš sušáky na maso."     

	atmosphereList : ShuffledEventList
	{
		[
			'Divoká kočka se mrštně vrhla na zapomenutý kus masa kdovíjak dlouho ležící na zemi 
			a prchá kamsi do dáli. ',
			'Král oblohy svým jistým okem sleduje nejen sušáky, ale také Tebe... ',
			'Nesmírně zajímavé místo, díky němu si uvědomuješ, že pouhý bizon Tě dokáže nasytit, 
			ubytovat i odít, velmi, velmi zajímavé... '
		]
		eventPercent = 50
		eventReduceAfter = 6
		eventReduceTo = 25
	}    

	east: DeadEndConnector { "Ne, ne, ještě nenastal ten správný čas odejít. " }
  	west asExit(east)
	south asExit(east)
	northeast asExit(east)
	southeast asExit(east)	
  	north = mistnostPrerijniLovisteBizonu 
  	southwest = mistnostMistoProSajenskeSlavnostiAObrady 
  	northwest = mistnostPredTypimLovce 
;

+ susaky : CustomImmovable 'sušáky' 'sušáky' *2
   "Na stepi se maso usuší v horku za jediný den. To je něco naprosto fantastického, zkus si to doma. Autor této hry 
	suší na kamnech maso 2 – 3 dny a když to zkusil venku, večer mu bylo sežráno šikovnými kočkami. "

	isPlural = true

	cannotTakeMsg = 'Sušáky nejlépe poslouží tam, kde jsou a až se kmen bude stěhovat, lapne je sebou. '

    gcName = 'sušáky, sušákům, sušáky, sušácích, sušáky'
    gcVocab = 'sušáky/sušákům/sušácích'
;

+ navnada : Thing 'návnada' 'návnada na dravce' *3
   "Návnadu na dravce představuje staré pro lidskou bytost již nepoživatelné maso. "

    dobjFor(Take)
    {
        action()
        {
            "No, dobrá, teď tu nikdo není, takže by to mohlo projít, až nějaká žena půjde okolo, třeba sem nějakou tu návnadu zase připraví. ";

            self.moveInto(me);
        }
    }

    gcName = 'návnadu, návnadě, návnadu, návnadě, návnadou'
    gcVocab = 'návnadu návnadě návnada návnadou na dravce'
;
