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
 *   Před týpím mírového náčelníka
 */
mistnostPredTypimMirovehoNacelnika : OutdoorRoom 'Před týpím mírového náčelníka' 
		'před týpí mírového náčelníka'
		"Nyní jsi dorazil přímo do středu táborového kruhu, kde se vyjímá sice ohromné týpí, 
		ale zcela bez ozdob. Dveře týpí jsou zavřené.\n Vidíš týpí mírového náčelníka. 
		Můžeš jít na sever a na jih. "     
   
	in: DeadEndConnector { "Nemohu vstupovat do týpí se zavřenými dveřmi a zvláště ne do týpí 
	náčelníka. Budu si muset počkat nebo jít na věc jinak. " }  
  	west asExit(in)
  	north = mistnostPredTypimLecitele 
  	south = mistnostPredTypimNacelnikovaPribuzneho 
;

+ typiMirovehoNacelnika : CustomImmovable 'týpí' 'týpí' *4
    "Tradiční šajenské týpí je sice větší než ostatní, ale zcela bez ozdob. Pozice mírového náčelníka se 
	zde neodvíjí od jeho bohatství, právě naopak. Dát najevo moudrost v nejrůznějích situacích a umět se 
	podělit se svým majetkem s potřebnými je to, co dělá náčelníka náčelníka dobrým a úctyhodným. 
	<<first time>>Jaký kontrast k tomu, co znáš Ty, nemám pravdu? Zní to hezky, ale jakmile se něco takového
	dozví šikovné bledé tváře, tento náčelník bude první, kdo bude šikovně odstraněn, ba jo, to jo. <<only>>"

    cannotTakeMsg = 'Jestli jsi to ještě nepoznal, jsem ve středu táborového kruhu. Před týpím náčelníka v mírových časech. 
	Už je Ti to jasnější? '

    gcName = 'týpí, týpí, týpí, týpí, týpím'
    gcVocab = 'týpí/týpí/týpí/týpímu/típí/típí/típí/típí/mu/tee-pee/tee-pee/tee-pee/tee-peemu'
;
