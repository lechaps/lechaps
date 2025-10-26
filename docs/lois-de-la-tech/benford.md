# Benford

Tu t’es déjà demandé pourquoi, dans beaucoup de jeux de données, **les chiffres ne se répartissent pas de manière uniforme** ?  
Pourquoi le 1 apparaît beaucoup plus souvent que le 9 ?  
Bienvenue dans **la loi de Benford**.

> Dans de nombreux ensembles de données naturelles, le premier chiffre est plus souvent petit que grand.

Autrement dit : **le 1 domine les statistiques**.

## Pourquoi la loi de Benford est si parlante

* **Intuitivement, on s’attend à une répartition équilibrée** : chaque chiffre de 1 à 9 devrait apparaître environ aussi souvent. Mais en réalité, dans la nature, l’économie ou les sciences, **les nombres qui commencent par 1 sont bien plus fréquents**.
  
Selon la loi de Benford :

* Le chiffre **1** apparaît environ **30 % du temps**,
* Le **2**, environ **17 %**,
* Et le **9**, à peine **5 %**.

On observe ce schéma partout :

* Dans les **populations des villes**, les **revenus**, les **prix**, les **longueurs de rivières**,
* Mais aussi dans les **comptabilités d’entreprise** ou les **résultats électoraux**.

Et ce n’est pas une coïncidence : cette loi révèle une **structure cachée** dans la façon dont les nombres se distribuent dans le monde réel.

## D’où vient la loi de Benford ?

L’histoire commence en 1881, avec **Simon Newcomb**, un astronome canadien-américain.  
Il remarque que dans les tables logarithmiques qu’utilisaient les scientifiques de l’époque, **les premières pages (celles des nombres commençant par 1)** sont beaucoup plus usées que les dernières.
Intrigué, il publie une note sur cette observation étrange.  

Mais c’est en **1938** que **Frank Benford**, physicien américain chez General Electric, **vérifie et formalise** cette intuition.
Il analyse plus de **20 000 ensembles de données** (électricité, géographie, physique, économie…) et démontre que **la fréquence des premiers chiffres suit une loi logarithmique précise** :

> P(d) = log₁₀(1 + 1/d)

Où P(d) est la probabilité qu’un nombre commence par le chiffre _d_.

Depuis, cette “curiosité statistique” est devenue **un outil reconnu en mathématiques, en comptabilité et en investigation judiciaire**.  
Le FBI, l’IRS (le fisc américain) et de nombreux organismes d’audit l’utilisent pour **repérer les anomalies financières**.  

En somme, la **loi de Benford**, c’est la preuve que le monde n’est pas aussi aléatoire qu’il en a l’air. Derrière le chaos des nombres se cache une harmonie discrète : **la majorité des vérités du monde réel commencent par un 1**.  
Une belle leçon d’humilité pour qui croit que tout est uniforme.

## A ne pas confondre avec la « loi de Benford sur la controverse »

La loi de Benford (Frank Benford) n'est pas à confondre avec la [Benford’s Law of Controversy](https://en.wikipedia.org/wiki/Gregory_Benford#Benford's_law_of_controversy){ target="_blank" }

Celle loi de Gregory Benford, tirée du roman _Timescape_ (1980), énonce une autre vérité, plus humaine :

> La passion est inversement proportionnelle à la quantité réelle d’informations disponibles.

Autrement dit : **plus on en sait peu, plus on s’énerve**. Cette maxime, citée jusque dans des articles scientifiques, illustre à merveille les débats modernes : moins il y a de faits, plus les opinions s’enflamment.

### Références

* [Frank Benford, The Law of Anomalous Numbers, Proceedings of the American Philosophical Society, 1938](https://www.jstor.org/stable/984802){ target="_blank" }
* [Simon Newcomb, Note on the Frequency of Use of the Different Digits in Natural Numbers, American Journal of Mathematics, 1881](https://doi.org/10.2307/2369148){ target="_blank" }
* [Wikipedia – Benford’s Law](https://en.wikipedia.org/wiki/Benford%27s_law){ target="_blank" }
