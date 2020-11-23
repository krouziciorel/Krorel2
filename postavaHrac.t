#charset "utf-8"

/*
 *   Kroužící orel 2 - Indiánská vesnice
 *
 *   Pokračování prvního dílu Úprk z města naprogramované v systému TADS. 
 *   Vytvořil Luděk Šťastný s vydatnou pomocí a náměty českých textovkářů.
 */

#include <adv3.h>
#include <cs_cz.h>

/*
 *   Objekt, který reprezentuje postavu hráče ve hře. Obvykle se pojmenovává
 *   krátce "me", protože se na něj budeme občas odvolávat.
 */
me: Actor

    /*
     *   Dám postavě jméno a definuji slovník.
     */
    neme = 'Kroužící orel'
	vocabWords = 'orel'
    gender = 1

    /*
     *   Nechci hráče trápit tím, že by postava něco neunesla
     */
    maxSingleBulk = 10000

    desc = "Jsi vystudovaný lékař původem z indiánského kmene. Máš již dostatek
			zkušeností, abys věděl, co vše tato kombinace ve Tvém současném světě znamená. "

    /* Hráč začíná před týpím Bystrého rysa. */
    location = mistnostPredTypimBystrehoRysa
;

/*
 *   VzdyObleceno je zajímavá třída, kterou jsem si vypůjčil ze Základny pro "oblečení", 
 *	 které hráč nemůže sundat.
 */
+ VzdyObleceno 'bederní rouška' 'rouška' *3
    "Krásně zdobený pruh látky z jelení kůže s třásněmi sahajícími asi po Tvá kolena. 
	Jak nádherný a pohodlný oděv, když jej srovnáš s těmi svazujícími soudobými mužskými kalhotami, 
	na které sis dodnes nezvykl. "

    /* Bederní roušku nebude hra uvádět v příkazech typu prozkoumej vše. */
    hideFromAll(action) { return true; }

    extendedDesc()
    {
        /* Tahle poznámka se časem okouká, takže ji zobrazíme jen dvakrát. */
        if (extendedDescCount++ < 2)
            "Bedernice je základ indiánského oděvu, ke kterému lze v chladnějším počasí
			přidat legíny, ty se navazují na opasek držící právě roušku. ";
    }
    extendedDescCount = 0

    dobjFor(LookIn)
    {
        verify() { illogical('To, co se skrývá uvnitř se nedozvíš, nestoudníku jeden. '); }
    }

    cannotDoffMsg = "Odpusť, ale nahý tady lítat opravdu nehodlám a i kdyby, tahle šikovná 
					a velmi vzdušná věc mi nijak nepřekáží. "
  
    gcName = 'bederní roušky, bederní roušce, bederní roušku, bederní roušce, bederní rouškou'
    gcVocab = 'bederní roušky/roušce/roušku/rouškou'
;

+ VzdyObleceno 'kožený opasek' 'opasek' *2
    "Nádherně zdobený kožený opasek vyrobený z koňského postroje. Jedná se o nepostradatelnou součást 
	indiánského oděvu, v případě jeho prasknutí jsi hnedle nahý. "

    hideFromAll(action) { return true; }

    cannotDoffMsg = "Odpusť, ale nahý tady nebudu, veškerý oděv drží právě na opasku. "
  
    gcName = 'opasku, opasku, opasek, opasku, opaskem'
    gcVocab = 'opasku/opasku/opasek/opaskem'
;


+ VzdyObleceno 'orlí medicína' 'medicína' *3
    "Drobný váček s figurkou orla též obsahující léčivé byliny, který se nosí na krku. Nádherná vzpomínka 
	na domov a také na to, kým doopravdy jsi a ne co se z Tebe snaží kdosi uměle vytvořit pro své potřeby. "

    hideFromAll(action) { return true; }

    cannotDoffMsg = "Já vím, ale tak nějak cítím, že tuhle věc bych sundávat neměl. Vzpomínky, možná strach,
					nemám ponětí ... "
  
    gcName = 'orlí medicínu, orlí medicíně, orlí medicínu, orlí medicíně, orlí medicínou'
    gcVocab = 'orlí medicínu/medicíně/medicínou'
;

+ VzdyObleceno 'kožené mokasíny/mokasín' 'mokasíny' *4
    "Velmi pohodlné boty s nádhernou výšivkou, mají jen jedinou nevýhodu, nejsou zrovna určené do vlhka nebo do deště, 
	naštěstí na prérii zrovna dvakrát často neprší, takže to není větší problém. "

    isPlural = true

    hideFromAll(action) { return true; }

    cannotDoffMsg = "Mokasíny si alespoň zatím sundávat nebudu, vím, že je to zvláštní, ale potřebuji si po těch
					ne zrovna pohodlných bělošských botách zvyknout právě na ně a ani kůži na chodidlech nemám zrovna
					tvrdou. "
  
    gcName = 'mokasínů, mokasínům, mokasíny, mokasínech, mokasíny'
    gcVocab = 'mokasínů/mokasínům/mokasínech/mokasínu/mokasínům'
;
