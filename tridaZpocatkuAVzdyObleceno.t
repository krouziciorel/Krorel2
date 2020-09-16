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
 *   Třída pro oblečení vypůjčená ze Základny, které má postava na sobě už od začátku hry. 
 *	 Oblečení je potřeba postavě dát pomocí syntaxe s plusem.
 */
class PrvotneObleceno: Wearable
    wornBy = (location)

    /*
     *   Takové objekty schováme před VŠE, protože jsou to přirozené součásti
     *   osoby, která je nosí.
     */
    hideFromAll(action) { return true; }
;

/*
 *   Třída pro oblečení postavy hráče, které si nemůže sundat. Používá se pro
 *   běžné oblečení hráče, které není důvod sundavat.
 */
class VzdyObleceno: Wearable
    wornBy = me
    dobjFor(Doff)
    {
        check()
        {
            cannotDoffMsg;
            exit;
        }
    }
    cannotDoffMsg = "Teď opravdu není důvod, proč si něco sundavat. "

    dobjFor(Drop) asDobjFor(Doff)

    /* Schováme před "polož vše" či "svlékni vše". */
    hideFromAll(action)
    {
        return action.ofKind(DropAction)
            || action.ofKind(DoffAction)
            || action.ofKind(PutInAction)
            || inherited(action);
    }
;

