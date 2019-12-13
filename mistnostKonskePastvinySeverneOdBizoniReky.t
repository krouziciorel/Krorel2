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
mistnostKonskePastvinySeverneOdBizoniReky : Room 'Koňské pastviny severně od Bizoní řeky' 'koňské pastviny severně od Bizoní řeky'
		"<<first time>>Tak toto místo mi kromě kruhu týpí asi nejvíce ukazuje, co znamená skutečná svoboda. 
		Ve městě jsem se stále cítil těsně a i když jsem někdy zavítal na místní farmu, stále jsem cítil to ohraničení. 
		Zde si není možné něco takového představit, obrovská plocha se táhne donekonečna na všechny strany a vítr místo toho, 
		aby práskal dveřmi a zlobil nafintěné dámy, vesele čechrá koňské hřívy a dodává jím tak pocit naprosté nespoutanosti. 
		Ten, kdo žije ve městech a toto jednou pozná, nemůže už nikdy zapomenout. <<only>>Obrovská volná plocha plná vysoké trávy 
		a spousta majestátních koní je scenérie, kterou jsi ve městě opravdu neměl šanci poznat. Někteří řehtáci se poklidně pasou, 
		jiní si hrají, válejí se nebo spolu dovádějí, radost pohledět. Stádový pud však drží koně pohromadě, společně se chodí k řece napít, 
		společně schovat do lesa za řekou do stínu a společně vyvádějí právě zde."    

  	southwest = mistnostNapajedloProKone 
  	south = mistnostSeverniBrodPresBizoniReku 
  	northeast = mistnostTicheMistoNaUpatiHor 
;
