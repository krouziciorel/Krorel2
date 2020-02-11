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
 *   Psí válečník Ten kdo chodí vodou
 */
psiValecnik : Person 'šaman' 'šaman' *1 @mistnostPredTypimPsihoValecnika
	"Pomenší muž má na své hrudi nádherně vytetovaného koně, asi to bude nadšenec do koní. 
	O čemž jistě sní spousta nejen místních žen. "

    specialDesc = "Tetování je i v mém kmeni zcela běžná věc, majitel tím určitě chce něco vyjádřit. "
	properName = 'Ten kdo chodí vodou' 
    properNameKohoCeho = 'Toho kdo chodí vodou'
    properNameKomuCemu = 'Tomu kdo chodí vodou'
    properNameKohoCo = 'Tím kdo chodí vodou'
    properNameKomCem = 'Tomu kdo chodí vodou'
    properNameKymCim = 'Tím kdo chodí vodou'
    globalParamName = 'psí válečník'
    gcName = 'psího válečníka, psímu válečníkovi, psího válečníka, psím válečníkovi, psím válečníkem'
    gcVocab = 'psího psímu psím/válečníka/válečníkovi/válečníkem'
;
