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
     *   Nechci postavě dát jméno (name), aby nás hra nazývala jen zájmenem.
     *   Slovník ale raději dáme.
     */
    vocabWords = 'Kroužící orel'
    gender = 1

    /*
     *   Nechci se trápit tím, že by postava něco neunesla a protože jsme
     *   ladili velikosti předmětů kvůli tomu, aby nešly nacpat velké věci do
     *   ohřívače atp., tak by se to při výchozí nosnosti stát mohlo.
     */
    maxSingleBulk = 10000

    desc = "Jsi vystudovaný lékař původem z indiánského kmene. Máš již dostatek
			zkušeností, abys věděl, co vše tato kombinace v současném světě znamená. "

    /* Hráč začíná před týpím Bystrého rysa. */
    location = mistnostPredTipimBystrehoRysa
;

