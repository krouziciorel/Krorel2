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
 *   Týpí Bystrého rysa
 */
mistnostTipiBystrehoRysa : Room 'Týpí Bystrého rysa' 'týpí Bystrého rysa'
		"<<first time>>Po prvním vstupu do týpí Ti v hlavě probleskne uctivý způsob, 
		jak se chovat po příchodu do indiánského příbytku, popřeješ tedy krásný nový den 
		a vysvětlíš ženě důvod svého příchodu nejen do jejího týpí, ale i do vsi. Ohniště 
		právě krásně hoří a mladá žena i s dcerou připravují nějaký chutný pokrm. Malá dcera 
		pozoruje matku a při tom provádí úklid svých věcí, sem tam něco vynese ven a zase se 
		vrací zpět. Usmívající se žena je viditelně zaujata Tvým vyprávěním a cítíš, že Tvůj 
		postup plně chápe a asi by nejednala jinak. Představí se jako Tichá srna a ukáže Ti i 
		svojí malou dceru, u níž Ti oznámí jen přezdívku Vyjící celou noc. Při tom jsi se lehce 
		usmál, u indiánů typické a vše vysvětlující označení pro malé děti by bělochům asi připadalo 
		směšné... Po rozhovoru žena dovařila a sdělila Ti, že společně s dcerou půjdou na sběr dřeva. 
		Dozvěděl jsi se, že Tvoje truhla s věcmi je umístěna v levé části týpí hned za zásobou dřeva, 
		můžeš si ji zde nechat a vždy si vzít jen to, co právě potřebuješ. Jako manželův host máš právo 
		chodit do tohoto týpí a ani s jídlem si nemusíš dělat starosti, kdykoliv si můžeš přijít nabrat 
		pokrm z kotlíku nad ohništěm. Upřímně jsi vyjádřil svoji vděčnost a slíbil, že ještě před svým 
		odchodem dáš pozor na dohasínající ohniště. Laskavé přivítání i rozhovor Ti dodal novou energii 
		a radost z tvého konání. <<only>>Toto týpí patří manželce Bystrého rysa. Ihned poznáváš interiér, 
		na který jsi byl tak dlouho zvyklý, okamžitě si uvědomuješ, kolik let jsi tato známá místa neviděl... 
		Stavbě vévodí ohniště ležící uprostřed. Před tebou a po stranách vidíš nízké postele, lenošky, 
		indiánskou truhlu, na provazech napnutých výše jsou zavěšeny části oděvu a deky. Můžeš jít ven. "    

	out: TravelMessage { -> mistnostPredTipimBystrehoRysa "Nízkým vstupem se opatrně protahuješ ven. " }
	east asExit(out)
;
