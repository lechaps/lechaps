# Scaler : Amdahl x Gustafson x Gunther

> Scaler sans se mentir : frein, horizon, coût

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

## 4. Le trio décisionnel : quand penser Amdahl, Gustafson ou Gunther ?

Voici un arbtre de décision applicable à un système, un produit ou une organisation.

### Étape 1 — Le résultat n'augmente pas ?

**Amdahl** : identifie le goulot, supprime-le, simplifie.

### Étape 2 — Le besoin dépasse la capacité ?

**Gustafson** : parallélise, distribue, scale horizontalement.

### Étape 3 — Le scaling devient chaotique ou inefficace ?

**Gunther** : mesure les coûts, réduit la contention, re-pense la topologie.

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
