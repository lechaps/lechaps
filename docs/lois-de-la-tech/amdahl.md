# Amdahl

Tu as déjà vécu ce moment frustrant où tu optimises tout — code, infra, process — et pourtant… les performances globales ne bougent presque pas ?

Plus de serveurs, plus de threads, plus de budget. Mais toujours cette sensation de plafond invisible.

Félicitations : tu viens de rencontrer la **loi d'Amdahl**.

> The overall performance improvement gained by optimizing a single part of a system is limited by the fraction of time that the improved part is actually used — Gene M. Amdahl, 1967

Autrement dit : **Tu peux optimiser autant que tu veux : si la partie critique reste lente, tout reste lent.**

Ou, encore plus brutal : **Ce qui ne scale pas limite tout le reste**.

## Ce que dit vraiment la loi d'Amdahl

La loi d'Amdahl pose une vérité simple et dérangeante : **Le gain maximal d'un système est limité par sa part non parallélisable**.

Même si 90 % de ton système est ultra-rapide et parallélisable, les 10 % restants — séquentiels, bloquants, dépendants — fixent le plafond.

Et ce plafond est dur. Mathématique. Non négociable.

### Exemple concret

Si 30 % d'un traitement reste séquentiel :

* 2 processeurs ? → gain limité
* 10 processeurs ? → mieux, mais…
* 100 processeurs ? → ≈ 3,3x max

Pas 100x.
Jamais.

Ajouter des ressources n'élimine pas le goulot.
Ça le rend juste plus **visible**.

## Le schéma mental

> **Amdahl → "Qu'est-ce qui ralentit ?"**

Pas :

* “Qu'est-ce que je peux accélérer ?”
* “Où ajouter de la puissance ?”

Mais :

* Où est la partie incompressible ?
* Qu'est-ce qui ne peut pas être parallélisé ?
* Quelle dépendance structurelle bloque tout le reste ?

### Optimiser ≠ Scaler

* **Optimiser = réduire la quantité de travail**.
* **Scaler = augmenter le nombre de travailleurs**.

La loi d'Amdahl te rappelle une chose essentielle : **Scaler ne sert à rien si tu n'as pas d'abord optimisé le goulot**.

Exemple simple : Si 30 % du traitement reste séquentiel, même 100 processeurs n'offrent qu'un facteur d'environ **3,3x**. Un plafond dur.

### Version organisationnelle

* Une équipe brillante reste lente si la **coordination** est lourde.
* Une chaîne automatisée reste bloquée si la **logistique** traîne.
* Un CTO peut ajouter 10 devs… mais pas réduire les dépendances.

> **Optimiser, c'est réduire la friction.
> Mais la friction a un plancher.**

Et ce plancher, c'est souvent :

* une validation,
* une dépendance,
* un humain,
* ou une décision mal découpée.

## Pourquoi la loi d'Amdahl est toujours actuelle

À chaque génération technologique, on croit l'avoir dépassée :

* multicore,
* cloud,
* microservices,
* IA distribuée…

Et à chaque fois, elle revient, implacable : **le séquentiel change de forme, mais il ne disparaît jamais.**

La loi d'Amdahl n'est pas pessimiste. Elle est lucide.

Elle t'oblige à poser les bonnes questions avant d'investir plus, plus gros, plus fort.

### D'où vient la loi d'Amdahl

Gene M. Amdahl (1922–2015), architecte informatique majeur chez IBM, formalise la loi en 1967 dans _Validity of the Single Processor Approach to Achieving Large-Scale Computing Capabilities_.
Il y oppose la vision — alors dominante — qui pensait que "plus de processeurs = plus de performance".
Amdahl démontre au contraire que **le séquentiel est une limite absolue**, quelle que soit la quantité de ressources ajoutées.

Une idée vieille de plus de 50 ans… et toujours aussi inconfortable.

### Références

* [Gene M Amdahl - Validity of the single processor approach to achieving large scale
computing capabilities, 1967](https://safari.ethz.ch/digitaltechnik/spring2022/lib/exe/fetch.php?media=amdahl.pdf){ target="_blank" }
* [Amdahl's law - wikipédia](https://en.wikipedia.org/wiki/Amdahl%27s_law){ target="_blank" }
* [Retrospective on Amdahl's Law in the Multicore Era](https://ieeexplore.ieee.org/stamp/stamp.jsp?arnumber=7945175){ target="_blank" }
* [Reevaluating Amdahl's Law - John L. Gustafson](http://www.johngustafson.net/pubs/pub13/amdahl.htm){ target="_blank" }
