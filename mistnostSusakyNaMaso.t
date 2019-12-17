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
		Můžeš jít na sever, severozápad a na jihozápad. "    

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
