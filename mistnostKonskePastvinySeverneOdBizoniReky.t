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
 *   Koňské pastviny severně od Bizoní řeky
 */
mistnostKonskePastvinySeverneOdBizoniReky : OutdoorRoom 'Koňské pastviny severně od Bizoní řeky' 'koňským pastvinám severně od Bizoní řeky'
		"<<first time>>Tak toto místo mi kromě kruhu týpí asi nejvíce ukazuje, co znamená skutečná svoboda. 
		Ve městě jsem se stále cítil těsně a i když jsem někdy zavítal na místní farmu, stále jsem cítil to ohraničení. 
		Zde si není možné něco takového představit, obrovská plocha se táhne donekonečna na všechny strany a vítr místo toho, 
		aby práskal dveřmi a zlobil nafintěné dámy, vesele čechrá koňské hřívy a dodává jím tak pocit naprosté nespoutanosti. 
		Ten, kdo žije ve městech a toto jednou pozná, nemůže už nikdy zapomenout. <<only>>Obrovská volná plocha plná vysoké trávy 
		a spousta majestátních koní je scenérie, kterou jsi ve městě opravdu neměl šanci poznat. Někteří řehtáci se poklidně pasou, 
		jiní si hrají, válejí se nebo spolu dovádějí, radost pohledět. Stádový pud však drží koně pohromadě, společně se chodí k řece napít, 
		společně schovat do lesa za řekou do stínu a společně vyvádějí právě zde.\n 
		Můžeš jít na severovýchod, jih a na jihozápad. "    

	north: DeadEndConnector { "Nezlob se, ale na opuštění vesnice mám ještě dost času. " }
	east asExit(north) 
  	west asExit(north)
	southeast asExit(north)
	northwest asExit(north)
  	southwest = mistnostNapajedloProKone 
  	south = mistnostSeverniBrodPresBizoniReku 
  	northeast = mistnostTicheMistoNaUpatiHor 
;

+ Decoration 'koňské stádo' 'stádo' *4
    "Obrovské stádo pasoucích se koní, většinou z důvodu poměrně chudé zimní pastvy poměrně malých. Koně vypadají velmi spokojeně, protože 
	žijí ve svém přirozeném prostředí. Sem tam vidíš pobíhat malé chlapce, kteří mají na koně dávat pozor. " 

	notImportantMsg = 'Krásný pohled, že? Nespoutaná zvířata a pobíhající děti vypadají tak přirozeně jako slunce na obloze, proto se jen dívej. '  

    gcName = 'stáda, stádu, stádo, stádu, stádem'
    gcVocab = 'stáda/stádu/stádo/stádem'
;

+ Decoration 'malí chlapci' 'chlapci' *1
    "Malí indiánští chlapci se už od mala učí práci s koňmi, protože bez nich by na otevřené prérii byli ve veliké nevýhodě. 
	Již pouhá přítomnost stačí k tomu, aby si koně na člověka zvykli, takže při dospívání nebudou mít problémy je bravurně ovládat. " 

	isPlural = true

	notImportantMsg = 'Nezbední svišťové létají sem a tam, nech je při tom a jen je sleduj. '  

    gcName = 'malých chlapců, malým chlapcům, malí chlapci, malých chlapcích, malými chlapci'
    gcVocab = 'malých/malým/malými chlapců chlapcům chlapci chlapcích'
;