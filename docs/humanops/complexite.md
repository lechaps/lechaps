# Architecture : Gall × Dollo

> Commencer simple, assumer l'irréversibilité

Il existe deux erreurs récurrentes dans la conception des systèmes complexes.

La première consiste à croire qu'on peut **concevoir directement la bonne complexité**.
La seconde à penser qu'en cas d'erreur, on pourra **toujours revenir en arrière**.

Ces deux idées sont rassurantes.
Et toutes deux sont contredites par l'expérience.

Elles entrent même en collision frontale lorsque l'on met côte à côte **la loi de Gall** et **la loi de Dollo**.

## La première illusion : concevoir la complexité “correcte”

La **loi de Gall** nous rappelle une chose simple, mais profondément contre-intuitive :
la complexité qui fonctionne n'est jamais celle qu'on a imaginée à l'avance.

Dans les projets ambitieux, on cherche souvent à :

* anticiper tous les cas,
* couvrir tous les usages,
* figer une architecture “complète”.

Cette approche part d'une bonne intention : réduire les risques futurs.
Mais elle suppose une chose rarement vraie : **comprendre le système avant qu'il n'existe**.

Or, comme l'observe Gall, les systèmes qui fonctionnent durablement ne sont pas ceux conçus complexes dès le départ, mais ceux qui **évoluent à partir d'un noyau simple qui fonctionne réellement**.

La complexité utile n'est pas planifiée.
Elle est révélée par l'usage.

## La seconde illusion : pouvoir effacer l'histoire

Face à cette incertitude, une promesse implicite rassure les équipes :
*“Ce n'est pas grave, on ajustera plus tard.”*

Rollback.
Refonte.
Réarchitecture.
Retour à une version “plus saine”.

C'est ici qu'intervient la **loi de Dollo**.

Dollo nous rappelle que, dans les systèmes complexes, **les trajectoires sont irréversibles**.
Un système peut retrouver une fonction ou un comportement, mais jamais effacer complètement les étapes intermédiaires qui l'ont façonné.

Chaque décision laisse des traces :

* dans les données,
* dans les interfaces,
* dans les dépendances,
* dans les équipes et leurs réflexes.

Autrement dit : même quand on “recommence”, on recommence **chargé de mémoire**.

## Quand Gall et Dollo se combinent

Pris séparément, ces deux lois sont déjà inconfortables.
Ensemble, elles deviennent redoutables.

La loi de Gall nous dit :

> *Si tu construis trop complexe trop tôt, ton système ne marchera pas.*

La loi de Dollo ajoute :

> *Et si tu te trompes, tu ne pourras jamais vraiment revenir en arrière.*

C'est cette combinaison qui explique pourquoi tant de grands systèmes échouent :

* une complexité prématurée,
* suivie de corrections successives,
* dans un système dont l'histoire ne peut plus être effacée.

Résultat :
un système ni simple, ni vraiment adaptable,
mais **figé par ses propres choix initiaux**.

## Le vrai coût de la complexité prématurée

La complexité inutile ne crée pas seulement des bugs ou des lenteurs.
Elle **réduit l'espace des futurs possibles**.

Chaque abstraction superflue devient une contrainte.
Chaque choix anticipé devient une dette.
Chaque “au cas où” devient un héritage.

Et, comme le rappelle Dollo, ces choix ne disparaissent jamais vraiment.
Ils orientent silencieusement toutes les évolutions futures.

Un système trop complexe trop tôt vieillit mal, non pas parce qu'il est ancien,
mais parce qu'il a grandi **sans apprendre**.

## Concevoir avec ces lois en tête

Si l'on prend au sérieux Gall et Dollo, alors la stratégie change radicalement.

La bonne question n'est plus :

> “Quelle est l'architecture idéale à long terme ?”

Mais :

> “Quelle est la plus petite chose qui fonctionne réellement aujourd'hui ?”

Et surtout :

> “Comment accepter que chaque décision va contraindre le futur ?”

Cela implique :

* de commencer volontairement plus simple qu'on ne le souhaiterait,
* d'accepter que toute évolution est irréversible dans ses détails,
* de documenter les trajectoires, pas seulement les états,
* de concevoir des systèmes capables d'absorber leur propre histoire.

## Concevoir avec le temps, pas contre lui

Les systèmes robustes ne cherchent pas à battre le temps.
Ils **l'utilisent**.

Ils acceptent que :

* la compréhension vient après l'usage (Gall),
* la transformation laisse toujours des traces (Dollo),
* la perfection initiale est une illusion dangereuse.

Un bon système n'est ni parfait, ni propre, ni définitif.

C'est un système qui :

* fonctionne maintenant,
* peut évoluer ensuite,
* et assume pleinement le chemin parcouru.

### Conclusion

> **Gall nous apprend à commencer simple.
> Dollo nous rappelle que chaque pas compte.
> Ignorer l'un ou l'autre, c'est concevoir à l'aveugle.**
