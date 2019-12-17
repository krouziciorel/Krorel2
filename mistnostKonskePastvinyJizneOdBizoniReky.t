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
	'koňské pastviny jižně od Bizoní řeky'
		"Moc pěkný pás země s vysokou stepní trávou představuje ideální pastviny pro koně. 
		Takových je v okolí vesnice spousta, takže si čtyřnozí krasavci mohou vybírat pro sebe 
		tu nejlepší. Nyní jsou zde pouze dva větší koně, kteří se spokojeně pasou. 
		Jeden z nich je pomalován.\n 
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
