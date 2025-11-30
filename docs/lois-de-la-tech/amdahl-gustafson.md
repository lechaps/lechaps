# Amdahl & Gustafson

## Quand optimiser bloque… et quand scaler libère

Il existe deux lois qui expliquent pourquoi certains systèmes plafonnent — et pourquoi d’autres, au contraire, s’envolent lorsqu’on leur ajoute des ressources. Deux lois qui parlent du **scaling**, du **parallélisme**, de la **croissance des charges**… et de la façon dont nos architectures répondent au changement.

D’un côté, **la loi d’Amdahl**, qui décrit les limites fondamentales de l’optimisation.  
De l’autre, **la loi de Gustafson**, qui décrit le potentiel d’extension des systèmes parallèles.

À elles deux, elles forment une seule idée puissante :
**Optimiser ne suffit pas ; parfois, il faut changer d’échelle.**

## 1. La loi d’Amdahl : tu n’iras jamais plus vite que ton maillon le plus lent

Tu as probablement déjà vécu ça : tu accélères une partie du système — infrastructure, code, équipe, process — mais le gain global est décevant. Tu as amélioré un segment, mais ce n’était pas celui qui limitait tout le reste.

Gene Amdahl résume cela en une phrase :

> The overall performance improvement gained by optimizing a single part of a system is limited by the fraction of time that the improved part is actually used.

Autrement dit :
**Tu peux optimiser autant que tu veux : si la partie critique reste lente, tout reste lent.**

### Pourquoi cette loi est si parlante ?

* Une amélioration locale ne garantit jamais une amélioration globale.
* Plus on optimise un composant, plus les autres deviennent le goulot d’étranglement.
* Plus on accélère, plus la limite invisible apparaît.

En développement comme en management :

* un processeur plus rapide n’accélère pas le code séquentiel,
* une chaîne de production automatisée reste bloquée si la logistique traîne,
* une équipe brillante reste lente si la coordination freine.

**Amdahl nous rappelle que l’optimisation partielle a une limite structurelle.**

### D’où vient la loi d’Amdahl ?

Gene M. Amdahl (1922–2015), pionnier informatique et architecte des premiers systèmes IBM, formalise cette idée en 1967 dans *Validity of the Single Processor Approach to Achieving Large-Scale Computing Capabilities*.

Il démontre mathématiquement que :

* si 90 % d’un programme est parallélisable,
* même avec une infinité de processeurs,
* **le gain maximal reste 10x — jamais plus.**

En bref :
**optimiser un système, ce n’est pas optimiser une partie — c’est optimiser son goulet.**

Prenons un cas réel : si 30 % du temps total d’exécution d’un programme reste séquentiel, même avec 100 processeurs, le gain maximum n’excède pas :

> 1 / (0.3 + 0.7/100) ≈ 3.3x

On peut multiplier la puissance, ajouter des instances, optimiser des blocs…  
tant que la section séquentielle reste là, **le plafond demeure.**

Amdahl nous force à une démarche simple et essentielle :

1) Mesurer.
2) Identifier le goulot.
3) Optimiser uniquement ce qui limite vraiment.

Pas d’optimisation “à l’aveugle”. Pas de tuning décoratif. **D’abord le bottleneck, puis le reste.**

## 2. La loi de Gustafson : agrandir le problème pour débloquer la vitesse

Face à Amdahl, qui fixe une limite, John L. Gustafson propose une réponse inattendue en 1988 : Et si au lieu d’essayer de faire la même chose plus vite… on faisait **plus de choses** dans le même temps ?

Il résume cela ainsi :

> We don't speed up the old problem, we solve bigger problems in the same time.

Autrement dit :
**Ajouter des ressources ne sert pas seulement à accélérer ; cela permet d’augmenter l’ambition.**

### Le renversement de perspective

Amdahl regarde la vitesse **à taille de problème fixe**.
Gustafson regarde le potentiel **à taille de problème variable**.

Ce changement de regard est immense :

1. Là où Amdahl dit *“Tu es limité par ton séquentiel”*, Gustafson dit *“Tu peux traiter davantage si tu scales”*.
2. Là où l’on voit un plafond, il montre une opportunité.
3. Là où l’on optimise, il propose de **redimensionner**.

Exemple concret :  
Un pipeline data traite 100 000 événements/minute.  
On optimise → 120 000/min. Bien, mais limité.  
On scale horizontalement → 1 000 000/min.

On n’a pas juste accéléré l’ancien problème.  
On a **changé l’échelle du terrain de jeu.**

On le voit dans :

* le machine learning → plus de données = plus de valeur,
* les microservices → plus de noeuds = plus de charge absorbée,
* la recherche scientifique → plus de calcul = nouveaux modèles explorables.

**Gustafson n’ignore pas les limites — il montre comment les dépasser.**

### D’où vient la loi de Gustafson ?

John L. Gustafson, chercheur en calcul parallèle, publie cette idée en 1988 dans *Reevaluating Amdahl’s Law*.
Sa vision ouvre la voie au *scaled computing*, au HPC moderne et aux architectures distribuées.

Là où Amdahl fixe les frontières, Gustafson trace les trajectoires.

### Quand penser Amdahl, quand penser Gustafson ?

* Amdahl → quand le résultat est lent : on cherche le maillon qui bride, on le optimise, on le simplifie.
* Gustafson → quand la demande explose : on divise la charge, on parallélise, on scale, on distribue.

En résumé :

* **Amdahl = réduire le temps**.  
* **Gustafson = augmenter la capacité.**

## 3. Deux lois, un même message : optimiser ne suffit pas — il faut changer de perspective

Amdahl nous oblige à regarder ce qui limite.
Gustafson nous invite à regarder ce qui devient possible.

L’un montre la barrière. L’autre montre l’horizon.

Ensemble, ils nous rappellent que la performance n’est pas qu’une affaire de vitesse, mais d’**angle d’attaque** :

* *On peut optimiser… mais on peut aussi agrandir.*
* *On peut accélérer… mais on peut aussi redimensionner.*

Dans tout système — logiciel, organisation, produit, équipe — ces deux questions coexistent :

**Où ralentissons-nous ?** (Amdahl)
**Que pourrions-nous accomplir si nous scalions ?** (Gustafson)

Et c’est dans l’équilibre entre les deux que naît la vraie croissance :

* On simplifie pour réduire les frictions.
* On élargit pour libérer le potentiel.

**Le progrès n’est jamais seulement une amélioration — c’est un changement d’échelle.**

### Attention : le scaling n’est pas gratuit

Augmenter l’échelle apporte de la puissance, mais aussi de nouvelles contraintes :

* coordination inter-services,
* observation & monitoring,
* risques de latence en queue,
* coûts d’infrastructure qui gonflent,
* cohérence plus difficile à maintenir.

Gustafson nous donne envie d’aller loin —  
Amdahl nous empêche d’oublier les fondations.

### Amdahl vs Gustafson — deux visions, un cadre stratégique

|                             | **Loi d’Amdahl** 🧩                              | **Loi de Gustafson** 🚀                            |
| --------------------------- | ------------------------------------------------ | -------------------------------------------------- |
| **Regard principal**        | Limites & contraintes                            | Scalabilité & potentiel                            |
| **Question centrale**       | *Qu’est-ce qui ralentit ?*                       | *Que pourrions-nous faire de plus ?*               |
| **Mécanique**               | Un maillon lent ralentit tout le système         | Plus de ressources → plus de capacité              |
| **Mode d’action**           | Optimiser, simplifier, retirer                   | Étendre, paralléliser, augmenter                   |
| **Effet attendu**           | Réduction des goulots                            | Augmentation de l’ambition                         |
| **Risques si utilisé seul** | Vision pessimiste, plafond rapide                | Surestimation du scaling, démesure                 |
| **Métaphore simple**        | Course à relais : un coureur lent perd la course | Plus de coureurs → parcours élargi                 |
| **Quand l'utiliser ?**      | Quand tout accélère sauf le résultat             | Quand le besoin croît plus vite que l’optimisation |

* **Amdahl = identifier le frein.**
* **Gustafson = ouvrir la route.**

On retrouve cette tension Amdahl ↔ Gustafson partout aujourd’hui :

* LLM → plus de GPU = plus de capacité (Gustafson)
* Optimisation modèle (quantization, compression) = réduire la friction (Amdahl)
* Microservices → scale par multiplication des nœuds (Gustafson)
* Performance DB, index, caching → débloquer le goulot (Amdahl)

Les deux lois ne sont pas théoriques :  elles pilotent *l’architecture moderne*.

### Références

* [Gene M Amdahl - Validity of the single processor approach to achieving large scale
computing capabilities, 1967](https://safari.ethz.ch/digitaltechnik/spring2022/lib/exe/fetch.php?media=amdahl.pdf){ target="_blank" }
* [Amdahl's law - wikipédia](https://en.wikipedia.org/wiki/Amdahl%27s_law){ target="_blank" }
* [Retrospective on Amdahl’s Law in the Multicore Era](https://ieeexplore.ieee.org/stamp/stamp.jsp?arnumber=7945175){ target="_blank" }
* [Reevaluating Amdahl's Law - John L. Gustafson](http://www.johngustafson.net/pubs/pub13/amdahl.htm){ target="_blank" }
* [Gustafson's law - wikipédia](https://en.wikipedia.org/wiki/Gustafson%27s_law){ target="_blank" }
