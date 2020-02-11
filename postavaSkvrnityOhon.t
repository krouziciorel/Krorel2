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
 *   Zvědavý indián Skvrnitý ohon
 */
skvrnityOhon : Person 'indián' 'zvědavý indián' *1 @mistnostPredTypimZvedavehoIndiana
	"Skvrnitý ohon je na první pohled mnohem mladší, než Ty a velmi rozverný, často
     se pokukuje okolo jako by něco hledal. "

    specialDesc = "Je zde indián Skvrnitý ohon. "
	properName = 'Skvrnitý ohon' 
    properNameKohoCeho = 'Skvrnitého ohona'
    properNameKomuCemu = 'Skvrnitému ohonovi'
    properNameKohoCo = 'Skvrnitým ohonem'
    properNameKomCem = 'Skvrnitému ohonovi'
    properNameKymCim = 'Skvrnitému ohonovi'
    globalParamName = 'zvědavý indián'
    gcName = 'zvědavého indiána, zvědavému indiánovi, zvědavého indiána, zvědavém indiánovi, zvědavým indiánem'
    gcVocab = 'zvědavého zvědavému zvědavém zvědavým/indiána/indiánovi/indiánem'
;
