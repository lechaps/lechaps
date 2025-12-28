# Gustafson

Tu as déjà entendu quelqu'un dire : « On a plus de machines, mais ça ne va pas beaucoup plus vite » ?  
John Gustafson répondrait : tu poses la mauvaise question.  
Parce que le parallélisme ne sert pas d'abord à aller plus vite. Il sert à faire beaucoup plus.

Bienvenue dans la loi de Gustafson.

> We don't speed up the old problem; we solve bigger problems in the same time. — John Leroy Gustafson, 1988

Autrement dit : **Le parallélisme libère surtout la capacité, pas la vitesse brute**.

Ce qu'il change, ce n'est pas le chrono. C'est l'ambition du problème.

## Ce que dit vraiment la loi de Gustafson

Gustafson ne demande pas : « Combien plus vite vais-je résoudre ce problème fixe ? »

Il demande : « Quel problème beaucoup plus grand puis-je résoudre dans le même temps ? »

Sa thèse est simple : Un système parallélisé peut absorber beaucoup plus de travail sans augmenter le temps total.

Ce n'est pas la vitesse du problème initial qui compte, mais la capacité à faire grandir le problème.

## Le schéma mental

> **Gustafson → "Que pourrions-nous faire de plus ?"**

Pas :

* “Combien de secondes on gagne ?”

Mais :

* Quelle nouvelle échelle devient possible ?
* Quelle complexité supplémentaire peut-on absorber ?
* Quel plafond vient de sauter ?

### Exemple concret

Pipeline data :

* Optimisation → 100k → 120k événements/min.
* Scaling horizontal → 1M événements/min.

On n'a pas rendu l'ancien problème beaucoup plus rapide.  
On a rendu possible un problème dix fois plus grand.

C'est exactement ça, Gustafson.

## Version organisationnelle

La loi fonctionne aussi très bien hors du calcul pur :

* Plus de squads = plus de sujets traités en parallèle.
* Plus de GPU = modèles plus grands, plus riches, plus ambitieux.
* Plus de capacité = questions qu'on n'osait même pas poser avant.

> **Gustafson ne nie pas la limite — il invite à la dépasser en changeant d'échelle.**

## Pourquoi Gustafson est crucial aujourd'hui

Cloud, big data, IA, simulation, rendu, entraînement de modèles… Tous ces domaines ne cherchent pas à faire la même chose plus vite.

Ils cherchent à :

* traiter plus de données,
* simuler plus finement,
* entraîner plus large,
* explorer plus profond.

Ils appliquent Gustafson sans le dire.

## D'où vient la loi de Gustafson

John L. Gustafson publie sa loi en 1988 dans *Reevaluating Amdahl's Law.* Il y critique la vision strictement pessimiste d'Amdahl, en observant que les systèmes parallèles n'accélèrent pas des problèmes constants : **ils permettent d'attaquer des problèmes plus grands.**. 
Cette vision ouvre la voie au *s*caled computing** moderne.

### Références

* [Reevaluating Amdahl's Law - John L. Gustafson](http://www.johngustafson.net/pubs/pub13/amdahl.htm){ target="_blank" }
* [Gustafson's law - wikipédia](https://en.wikipedia.org/wiki/Gustafson%27s_law){ target="_blank" }
