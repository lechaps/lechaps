# Amdahl

Tu as déjà essayé d’aller plus vite en ajoutant des bras à un projet… pour te rendre compte que ça n’allait pas vraiment plus vite ?  
Bienvenue dans **la loi d’Amdahl**.

> L’amélioration globale d’un système est limitée par la partie qui ne peut pas être améliorée.

Autrement dit : **même si tu accélères une partie du travail, le reste finit par te ralentir**.

## Pourquoi la loi d’Amdahl est si parlante

Imaginons que tu veux rendre ton équipe plus rapide : tu automatises 80 % des tâches répétitives… mais les 20 % restantes doivent toujours être faites à la main.  
Résultat ? Tu gagnes du temps, oui — mais **jamais autant que tu l’espérais**.

C’est exactement ce que montre la **loi d’Amdahl** : « Quand on améliore une partie d’un système, le gain global dépend de la proportion de temps que cette partie occupe dans l’ensemble.»

Prenons quelques exemples :

* **En informatique** : même si tu rends un processeur dix fois plus rapide, **le code non parallélisable** devient le goulot d’étranglement.
* **En entreprise** : automatiser la production ne sert à rien si **la logistique** reste lente.
* **Dans une équipe** : tu peux avoir des stars sur une tâche, si **la coordination bloque**, tout le monde attend.

**Plus tu optimises, plus la partie non optimisée devient visible**. C’est le paradoxe de l’efficacité : chaque progrès révèle le prochain frein.

## D’où vient la loi d’Amdahl ?

La loi porte le nom de **Gene Amdahl** (1922–2015), **informaticien et architecte américain**, connu pour avoir travaillé sur les premiers ordinateurs d’IBM et conçu le célèbre **IBM System/360**.  

En **1967**, il publie un article fondateur : _Validity of the Single Processor Approach to Achieving Large-Scale Computing Capabilities_, où il démontre mathématiquement que **l’accélération maximale d’un programme parallèle dépend de la proportion de code qui reste séquentielle**.  

Formulé simplement :

* Si 90 % d’un programme peut être parallélisé, et 10 % ne peut pas,
* même avec une infinité de processeurs, tu n’iras que 10 fois plus vite — pas plus.

Cette idée devient la **loi d’Amdahl**, un pilier de la **programmation parallèle**, de l’**optimisation logicielle** et même du **management des systèmes complexes**.  
Elle rappelle qu’il ne suffit pas d’ajouter de la puissance : il faut **identifier et réduire les vrais goulots d’étranglement**.

## Pourquoi c’est inspirant

Parce que la loi d’Amdahl ne parle pas que d’ordinateurs — elle parle **de tout ce qu’on essaie d’améliorer**.

* **Optimiser partiellement ne suffit pas** – Tant qu’une partie du système reste lente, elle limite le reste.
* **Le vrai levier, c’est la globalité** – Chercher le **chaînon le plus lent** avant d’ajouter des ressources.
* **La simplicité reste la meilleure accélération** – Parfois, **faire moins**, c’est **avancer plus vite**.

Bref, la **loi d’Amdahl** est un rappel puissant : **tu ne vas jamais plus vite que ton maillon le plus lent**.

En somme, la loi d’Amdahl nous enseigne que **le progrès n’est pas linéaire** : améliorer un bout ne suffit pas si le reste bloque. Avant d’ajouter des ressources, **cherche ton goulot** — c’est souvent là que se cache la vraie marge de manœuvre.  
Parce qu’au fond, **un système est aussi rapide que sa partie la plus lente**.

### Références

* [Gene M Amdahl - Validity of the single processor approach to achieving large scale
computing capabilities, 1967](https://safari.ethz.ch/digitaltechnik/spring2022/lib/exe/fetch.php?media=amdahl.pdf){ target="_blank" }
* [Amdahl's law - wikipédia](https://en.wikipedia.org/wiki/Amdahl%27s_law){ target="_blank" }
* [Retrospective on Amdahl’s Law in the Multicore Era](https://ieeexplore.ieee.org/stamp/stamp.jsp?arnumber=7945175){ target="_blank" }
