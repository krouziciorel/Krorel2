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
 *   Místo pro šajenské slavnosti a obřady
 */
mistnostMistoProSajenskeSlavnostiAObrady : Room 'Místo pro šajenské slavnosti a obřady' 
	'místo pro šajenské slavnosti a obřady'
		"Přicházíš na velmi pěkné místo ze tří stran obklopené řídkým porostem, který ohraničuje veliké kruhové prostranství. U okraje vidíš saunu zvanou inipi, ke které vede krátká cestička zakončená nyní vyhaslým ohništěm. Před vchodem se bělá vysušená bizoní lebka, která jakoby na něco čeká. Nebo na někoho... Nechybí ani malý posvátný kruh tvořený kameny. Zkrátka ideální prostranství pro nejrůznější slavnosti a tance, které máš tak rád. <<first time>>Jak vidno, zdaleka tu nejsi sám. Muži i ženy v čilém ruchu prostranství připravují, co nevidět začne nějaká jistě nesmírně zajímavá slavnost. Cítíš, že i jako cizinec jsi vítán, jen bude vhodné se dobře připravit. Když vzpomínáš na Vaše slavnosti, každý, ať muž či žena, byl hezky a stylově pomalován, měl na sobě ozdoby vhodné pro tanec toho, co člověk touží vyjádřit a přichystal si nějaký dar pro ostatní. Žádná uniformita ani náhodou, každý vypadá jinak a každý ví, jak má vypadat nejlépe, žádné poučky netřeba. Tato námaha se vždy bohatě vyplatila, z každé, opravdu každé slavnosti jsi odcházel rozjařený a šťastný, což je jistě ten jediný správný výsledek.<<only>>"    

  	northwest = mistnostJihozapadniHranicePrerie 
  	northeast = mistnostSusakyNaMaso 
  	north = mistnostPredTipimStarce 
;
