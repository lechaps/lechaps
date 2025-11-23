# Anderson

Tu as déjà vu un système qui doit être à la fois **puissant**, **fonctionnel** et **massif** — et constaté que plus il essaye d’être tout ça, plus il s’expose au risque de **fuite de données**, de **bugs critiques** ou de **paralysie totale** ?  
Bienvenue dans **la loi d’Anderson**.

> Systems that handle sensitive personal information involve a trilemma of security, functionality, and scale, of which you can choose any two. A system that has information on many data subjects and to which many people require access is hard to secure unless its functionality is severely restricted. If it has rich functionality, you may have to restrict the number of people with access, or accept that some information will leak.*

Autrement dit : **Si tu veux un système ultra-fonctionnel et accessible à tout le monde, oublie la sécurité. Si tu veux de la sécurité béton, il faudra soit réduire les usages, soit limiter qui peut y accéder. Le trio gagnant n’existe pas : dès que tu pousses un curseur, un autre saute.**

Bref : **Sécurité, fonctionnalités, mise à l'échelle : tu peux en avoir deux, jamais les trois.**

## Pourquoi la loi d’Anderson est si parlante

* Imagine un service web qui traite les données de millions d’utilisateurs (échelle). Il veut offrir des options avancées (fonctionnalité) et garantir que **rien ne fuit, rien n’est piratable** (sécurité). Résultat : un triangle impossible à équilibrer : tu devras sacrifier l’un des trois sommets.

Concrètement :

* Si tu gardes la **sécurité forte** et la **fonctionnalité riche**, tu ne pourras pas **servir des millions d’utilisateurs** avec la même facilité.
* Si tu veux la **fonctionnalité** et l’**échelle**, tu devras affaiblir certains aspects de la sécurité — ou accepter des risques.
* Si tu vises la **sécurité maximale** et l’**échelle massive**, tu devras limiter les fonctions offertes.

C’est exactement ce que dit la loi : **sur les systèmes sensibles, tu choisis deux parmi trois : sécurité ⇌ fonctionnalité ⇌ échelle**.
Et ça, ça change beaucoup de discussions sur le logiciel, l’architecture, la gouvernance des données.

## D’où vient la loi d’Anderson ?

Cette « loi » porte le nom de **Ross J. Anderson**, chercheur britannique en sécurité informatique, cryptographie et gouvernance des données. C’est dans ses travaux sur les systèmes d’informations sensibles qu’il formule ce constat : « Les systèmes qui manipulent beaucoup de données, avec beaucoup d’utilisateurs, et veulent proposer beaucoup de fonctionnalités — ne peuvent pas le faire **sans compromis**. »  

Même s’il ne le présente pas toujours comme une « loi » formelle sous ce nom, la règle circule largement dans le domaine de la cybersécurité. Elle est citée dans les analyses de fuites de données, de plateformes à grande échelle et de systèmes critiques.

En somme, la loi d’Anderson nous rappelle une vérité que beaucoup oublient : **l’échelle + la puissance + la sécurité, ça ne vient jamais gratuitement**.  
Quand tu veux tout, tu finis souvent par perdre quelque chose.  
Choisis tes priorités, sois conscient des compromis — et arrête de croire qu’un système « gratuit » peut avoir **sécurité, usage riche et millions d’utilisateurs** sans concession.

### Références

* [Wikipedia – Anderson’s rule (computer science)](https://en.wikipedia.org/wiki/Anderson%27s_rule_(computer_science)){ target="_blank" }
* [Ross Anderson](https://scholar.google.com/citations?user=WgyDcoUAAAAJ){ target="_blank" }
