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
 *   Severní brod přes Bizoní řeku
 */
mistnostSeverniBrodPresBizoniReku : OutdoorRoom 'Severní brod přes Bizoní řeku' 'severní brod přes Bizoní řeku'
		"Překročit Bizoní řeku není zas tak obtížné, zde se ale nachází o něco širší brod vhodný nejen pro přechod, 
		ale také brodění unavených nohou i koňských kopyt. Nádherně čistá řeka se zde trochu zpomaluje.\n 
		Můžeš jít na sever, jih a na západ. "      

	east: DeadEndConnector { "Putování a průzkum vesnice ještě není u konce, neodváděj mě odtud tak brzy. " }
  	northeast asExit(north)
	northwest asExit(north)
	southeast asExit(north)
	southwest asExit(north)
  	west = mistnostNapajedloProKone 
  	north = mistnostKonskePastvinySeverneOdBizoniReky 
  	south = mistnostKonskePastvinyJizneOdBizoniReky 
;

+ prechodPresReku : Container 'přechod' 'přechod přes řeku' *2
    "Přechod přes řeku je zde o něco hlubší, ale stále plně použitelný. "

    dobjFor(LookIn)
    {
        
        action()    
        {
            if(podivnyKamen.moved)
            {
                "Ve vodě se již nic zajímavého nenachází. ";
                exit;
            }
            podivnyKamen.makePresent();
            "Ve vodě se něco zablesklo, věc vypadá jako zvláštní kámen. ";
        }
    }

    gcName = 'přechodu přes řeku, přechodu přes řeku, přechod přes řeku, přechodu přes řeku, přechodem přes řeku'
    gcVocab = 'přechodu přechod přechodem přes/řeku'
;

++ podivnyKamen : PresentLater, Thing 'kámen' 'podivný kámen' *2
    "Opravdu zvláštní podlouhlý kámen s jakoby červeným bleskem na něm namalovaným. Tady si nevím rady, doporučuji se zeptat někoho zkušenějšího. "

    gcName = 'podivnému kameni, podivného kamene, podivný kámen, podivném kameni, podivným kamenem'
    gcVocab = 'podivnému podivném podivným podivného/kameni/kamenem/kamene'
;
