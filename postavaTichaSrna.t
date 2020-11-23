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
 *   Indiánská žena Tichá srna
 */
tichaSrna : Person 'Tichá srna' 'indiánka' *3 @mistnostLesniPorost
	"Moc pěkná žena ladných tvarů právě svazuje nasbírané dřevo do několika otepí a jak vidno, nikam nespěchá. Její zpěv je jako zpěv ptáků, tichý, šelestivý, ale velmi melodický."

    specialDesc = "Kdo si při práci zpívá, toho práce asi bude bavit a tato fešanda je zářným příkladem. "
	properName = 'Tichá srna' 
    properNameKohoCeho = 'Tiché srny'
    properNameKomuCemu = 'Tiché srně'
    properNameKohoCo = 'Tichou srnu'
    properNameKomCem = 'Tiché srně'
    properNameKymCim = 'Tichou srnou'
    globalParamName = 'indiánka'
    gcName = 'indiánku, indiánce, indiánku, indiánce, indiánkou'
    gcVocab = 'indiánku/indiánce/indiánkou'
;
