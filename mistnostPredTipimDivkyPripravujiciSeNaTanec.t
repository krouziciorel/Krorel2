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
 *   Před týpím dívky připravující se na tanec
 */
mistnostPredTipimDivkyPripravujiciSeNaTanec : OutdoorRoom 'Před týpím dívky připravující se na tanec' 
	'před týpím dívky připravující se na tanec'
		"Před týpím, které je ozdobeno motivy kachen a květin, stojí mladá dívka, která se viditelně 
		připravuje na nějaký tanec. V jedné ruce má malý bubínek, ve druhé červenou paličku a moc pěkně se 
		pohybuje do rytmu. Při pohledu na ni máš hnedle chuť si také zatancovat. U týpí je uvázán na dlouhé 
		šňůře hezký středně veliký kůň viditelně jižanského původu. Dveře jsou zavřené a lehce se pohupují
		v mírném větru. <<first time>>Vzpomínáš si na taneční zábavy ve městě, kde zpocené především mužské osazenstvo 
		ve špinavých knajpách před tím, než se opilo, jak zákon káže, tancovalo s dámami někdy nudné, ale jindy i zajímavé 
		a veselé tance. Sám víš, že tato zábava se rozproudila až pozdě v noci, když už měl každý jak se patří upito. 
		Ve Tvém bývalém domově tomu ale bylo jinak. Indiáni nepotřebují ke svým zábavám žádné pití a jejich tance imitující 
		chování přírody, rostlin či zvířat Tě svojí přirozeností přitahují více než cokoliv jiného. Nikdy jsi nevynechal žádnou 
		příležitost k orlímu, bizonímu či koňskému tanci a nemůžeš se dočkat, až si v šajenské vesnici také správně užiješ. 
		A mimochodem, při těchto častých zábavách nikdy nedošlo k žádným výtržnostem, alespoň pokud si pamatuješ, v příkrém 
		kontrastu s tím, co jsi zažil ve světě bledých tváří. <<only>>" 

 
	in: DeadEndConnector { "Ale to přeci ne, dveře jsou zavřené a vypadá to, že zde žije osamělá dívka. Takže nezlob
	a chovej se tak, aby se Tě ostatní nesnažili velmi rychle vyhodit. " }
	west asExit(in)
  	northwest = mistnostPredTipimPsihoLovce
	south = mistnostPredTipimValecnehoNacelnika
;



