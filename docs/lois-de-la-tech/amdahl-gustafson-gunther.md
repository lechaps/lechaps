# Amdahl, Gustafson & Gunther

## Les trois lois qui gouvernent vraiment la performance et le scaling

Il existe trois lois qui expliquent pourquoi certains systèmes plafonnent — et pourquoi d'autres, au contraire, s'envolent lorsqu'on ajoute des ressources.

Trois lois utilisées en HPC, en architecture logicielle, en scaling d'équipes, en data engineering, en infra distribuée.

Elles forment un cadre stratégique simple :

> **Optimiser agit sur le temps.
> Scaler agit sur la capacité.
> Et la réalité impose toujours une limite.**

Les lois d'Amdahl, de Gustafson et de Gunther sont complémentaires :
**Amdahl montre la barrière.
Gustafson montre l'horizon.
Gunther montre le coût réel du voyage.**

## 1. Amdahl : tu n'iras jamais plus vite que ton maillon le plus lent

Tu optimises un élément — mais le résultat global ne décolle pas.
C'est normal : ce n'était pas le goulot.

> The overall performance improvement gained by optimizing a single part of a system is limited by the fraction of time that the improved part is actually used. — Gene M. Amdahl, 1967

**Autrement dit :**
**Tu peux optimiser autant que tu veux : si la partie critique reste lente, tout reste lent.**

**Le gain maximal d'un système est limité par la proportion de travail non parallélisable.**

Plus un segment est séquentiel, plus il bride l'ensemble.

### Le schéma mental

> **Amdahl → "Qu'est-ce qui ralentit ?"**

### Optimiser ≠ Scaler

* **Optimiser = réduire la quantité de travail**.
* **Scaler = augmenter le nombre de travailleurs**.

Amdahl concerne le premier.

### Exemple simple

Si 30 % du traitement reste séquentiel, même 100 processeurs n'offrent qu'un facteur d'environ **3,3x**.
Un plafond dur.

### Version organisationnelle

* Une équipe brillante reste lente si la coordination est complexe.
* Une chaîne automatisée reste bloquée si la logistique traîne.
* Un CTO peut ajouter 10 devs… mais pas réduire les dépendances.

> **Optimiser, c'est réduire la friction.
> Mais la friction a un plancher.**

### D'où vient la loi d'Amdahl

Gene M. Amdahl (1922–2015), architecte informatique majeur chez IBM, formalise la loi en 1967 dans *"Validity of the Single Processor Approach to Achieving Large-Scale Computing Capabilities."*
Il y oppose la vision — alors dominante — qui pensait que "plus de processeurs = plus de performance".
Amdahl démontre au contraire que **le séquentiel est une limite absolue**, quelle que soit la quantité de ressources ajoutées.

## 2. Gustafson : agrandir le problème pour libérer la vitesse

Gustafson inverse la perspective.
Il ne demande pas : *"Combien plus vite ?"*
Il demande : *"Qu'est-ce que je pourrais accomplir de plus ?"*

La formulation standard de la loi : 

> We don't speed up the old problem; we solve bigger problems in the same time."* — John L. Gustafson, 1988

**Autrement dit :**
**Le parallélisme permet moins d'accélérer ce qu'on faisait déjà que d'augmenter radicalement ce qu'on est capable de faire.**

**Un système parallélisé peut traiter beaucoup plus de travail dans le même temps.**

Ce n'est pas la vitesse du problème initial qui compte, mais la capacité à agrandir le problème.

### Le schéma mental

> **Gustafson → "Que pourrions-nous faire de plus ?"**

### Le renversement

* Amdahl → taille fixe du problème.
* Gustafson → taille variable.

### Exemple concret

Pipeline data :

* Optimisation → 100k → 120k événements/min.
* Scaling horizontal → 1M événements/min.

On n'a pas accéléré l'ancien problème.
On a **changé d'échelle**.

### Version organisationnelle

* Plus de squads = plus de sujets traités en parallèle.
* Plus de GPU = modèles plus grands, plus riches, plus ambitieux.

> **Gustafson ne nie pas la limite — il invite à la dépasser en changeant d'échelle.**

### D'où vient la loi de Gustafson

John L. Gustafson publie sa loi en 1988 dans *"Reevaluating Amdahl's Law."*
Il y critique la vision strictement pessimiste d'Amdahl, en observant que les systèmes parallèles n'accélèrent pas des problèmes constants :
**ils permettent d'attaquer des problèmes plus grands.**
Cette vision ouvre la voie au *scaled computing* moderne.

## 3. Gunther : le scaling réel n'est jamais gratuit

Amdahl et Gustafson sont puissants, mais incomplets.
Il manquait une loi qui modélise le monde réel :

* latence,
* contention,
* coordination,
* cohérence,
* trafic réseau,
* invalidation de caches.

C'est ce que Gunther apporte en 1993 avec *Universal Scalability Law*

> A system's capacity is limited by contention and by the coherency delay introduced as the number of processors increases. — Neil J. Gunther, 1993

**Autrement dit :**
**Même si un système est parallélisable, le coût de coordination finit par annuler — voire inverser — les gains du scaling.**

**Le scaling réel est limité par deux forces : la contention et la cohérence.**

La loi prédit trois zones :

1. **Scaling linéaire** (rare).
2. **Diminishing returns** (les gains se tassent).
3. **Retrograde scaling** (ajouter des ressources ralentit le système).

### Le schéma mental

> **Gunther → "Quel est le coût de la coordination ?"**

### Exemple

À mesure qu'un cluster microservices s'agrandit :

* plus de latence réseau,
* plus de synchronisation,
* plus de contention,
* plus de cache invalidation,

jusqu'à un point où **ajouter des nœuds dégrade la performance**.

C'est le domaine de Gunther.

### Version organisationnelle

Plus d'équipes → plus de coordination → plus de dépendances → plus de meetings → vitesse effective réduite.

> **Gunther relie ingénierie et management :
> Scaler augmente toujours la complexité.**

### D'où vient la loi

Neil J. Gunther, physicien et spécialiste des systèmes distribués, publie l'Universal Scalability Law en 1993.
Il cherche alors à dépasser Amdahl et Gustafson en intégrant les phénomènes réels de coordination.
Sa loi devient la base du capacity planning moderne.

## 4. Le trio décisionnel : quand penser Amdahl, Gustafson ou Gunther ?

Voici un arbtre de décision applicable à un système, un produit ou une organisation.

### Étape 1 — Le résultat n'augmente pas ?

👉 **Amdahl** : identifie le goulot, supprime-le, simplifie.

### Étape 2 — Le besoin dépasse la capacité ?

👉 **Gustafson** : parallélise, distribue, scale horizontalement.

### Étape 3 — Le scaling devient chaotique ou inefficace ?

👉 **Gunther** : mesure les coûts, réduit la contention, re-pense la topologie.

## 5. Optimiser vs Scaler : le cadre mental final

Une phrase suffit pour comprendre les trois lois :

> **Optimiser agit sur le temps.
> Scaler agit sur la capacité.
> Gunther te rappelle que tu paies la coordination.**

Ou en version "leaders tech" :

* **Amdahl = identifier le frein.**
* **Gustafson = ouvrir la route.**
* **Gunther = éviter les accidents.**

## 6. La synthèse stratégique

## Le progrès n'est jamais seulement une accélération — c'est un changement d'échelle maîtrisé

Ces lois forment une pensée systémique :

* **Amdahl** montre ce qu'il faut réduire.
* **Gustafson** montre ce qu'il faut agrandir.
* **Gunther** montre ce qu'il faut contrôler.

Et leur tension façonne toutes les architectures modernes :

| Domaine           | Amdahl (friction)                  | Gustafson (capacité)     | Gunther (coût)             |
| ----------------- | ---------------------------------- | ------------------------ | -------------------------- |
| **LLM**           | Optimisation modèle (quantization) | + GPU = modèles + grands | Synchronisation multi-GPU  |
| **Data**          | Index, cache, partitioning         | + workers → throughput   | Shuffle / cross-node costs |
| **Microservices** | Optimiser la latence interne       | Multiplier les nœuds     | Surcoût RPC                |
| **Organisation**  | Simplifier, réduire dépendances    | + squads = + features    | Meetings, coordination     |

> **Pas de scale sans design.
> Pas de vitesse sans simplification.
> Pas de croissance sans limites.**

### Références

* [Gene M Amdahl - Validity of the single processor approach to achieving large scale
computing capabilities, 1967](https://safari.ethz.ch/digitaltechnik/spring2022/lib/exe/fetch.php?media=amdahl.pdf){ target="_blank" }
* [Amdahl's law - wikipédia](https://en.wikipedia.org/wiki/Amdahl%27s_law){ target="_blank" }
* [Retrospective on Amdahl's Law in the Multicore Era](https://ieeexplore.ieee.org/stamp/stamp.jsp?arnumber=7945175){ target="_blank" }
* [Reevaluating Amdahl's Law - John L. Gustafson](http://www.johngustafson.net/pubs/pub13/amdahl.htm){ target="_blank" }
* [Gustafson's law - wikipédia](https://en.wikipedia.org/wiki/Gustafson%27s_law){ target="_blank" }
* [Gunther's law - wikipédia](https://en.wikipedia.org/wiki/Neil_J._Gunther#Universal_Scalability_Law){ target="_blank" }
* [A simple Capacity model of massively parallel transaction systems - Neil J. Gunther](http://www.perfdynamics.com/Papers/njgCMG93.pdf){ target="_blank" }
