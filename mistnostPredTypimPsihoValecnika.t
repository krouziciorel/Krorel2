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
 *   Před týpím psího válečníka
 */
mistnostPredTypimPsihoValecnika : OutdoorRoom 'Před týpím psího válečníka' 
		'před týpí psího válečníka'
		"Přicházíš před bělostné týpí s válečnými ozdobami, vchod je však uzavřen. 
		Před stanem sedí pomenší muž a nevypadá zrovna spokojeně.\n Vídíš týpí psího válečníka.
		Můžeš jít na severovýchod a na jihozápad. "    

	in: DeadEndConnector { "Vchod do tohoto týpí je uzavřen, majitel si asi nepřeje návštěvu. Zkus přijít v jiný čas. " }   
  	west asExit(in)
  	northeast = mistnostPredTypimPsihoBojovnika 
  	southwest = mistnostPredTypimSamana 
;

+ typiPsihoValecnika : CustomImmovable 'týpí' 'týpí' *4
    "Skromně zdobené týpí, na kterém si dal majitel záležet, aby vypadalo jako domov bojovníka. 
	Znáš několik válečnických společností, zde se bude jednat o Psího válečníka. "

    cannotTakeMsg = 'Ty nevidíš, že majitel odpočívá zrovna před svým stanem? Uznávám však, že jsi odvážný a věřím, že nejen v této hře. '

    gcName = 'týpí, týpí, týpí, týpí, týpím'
    gcVocab = 'týpí/týpí/týpí/týpímu/típí/típí/típí/típí/mu/tee-pee/tee-pee/tee-pee/tee-peemu'
;

