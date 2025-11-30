# Anderson

Tu as déjà vu un système qui veut tout faire, tout offrir, tout sécuriser — et qui finit par devenir lent, exposé, fragile ou bancal ?
Bienvenue dans la loi d’Anderson : le trilemme qui hante l’informatique moderne.

> Systems that handle sensitive personal information involve a trilemma of security, functionality, and scale, of which you can choose any two. A system that has information on many data subjects and to which many people require access is hard to secure unless its functionality is severely restricted. If it has rich functionality, you may have to restrict the number of people with access, or accept that some information will leak.*

Autrement dit : **Si tu veux un système ultra-fonctionnel et accessible à tout le monde, oublie la sécurité. Si tu veux de la sécurité béton, il faudra soit réduire les usages, soit limiter qui peut y accéder. Le trio gagnant n’existe pas : dès que tu pousses un curseur, un autre saute.**

Bref : **Sécurité, fonctionnalités, mise à l'échelle : tu peux viser les trois, mais tu n’auras jamais 100 % des trois en même temps**

## Pourquoi la loi d’Anderson est si parlante

Imagine une plateforme qui manipule des données sensibles, veut délivrer une expérience riche, et s’adresser à des millions d’utilisateurs. Tu vois venir le problème : plus elle grossit, plus elle devient complexe ; plus elle devient complexe, plus elle devient vulnérable.

Concrètement :

* Si tu gardes la **sécurité forte** et la **fonctionnalité riche**, tu ne pourras pas **servir des millions d’utilisateurs** avec la même facilité.
* Si tu veux la **fonctionnalité** et l’**échelle**, tu devras affaiblir certains aspects de la sécurité — ou accepter des risques.
* Si tu vises la **sécurité maximale** et l’**échelle massive**, tu devras limiter les fonctions offertes.

La promesse du combo parfait **sécurité ∧ fonctionnalité ∧ millions d’utilisateurs** est donc un mythe.  
Pas impossible d'approcher l’équilibre… mais toujours au prix de compromis conscients..

## D’où vient la loi d’Anderson ?

**Ross J. Anderson**, chercheur britannique reconnu en cybersécurité et cryptographie, observe dès les premières architectures sensibles que :

> plus un système gère de données, plus il propose de fonctionnalités, et plus il est large d’accès — plus il devient difficile à sécuriser.

Il ne formalise pas toujours sa réflexion comme une “loi”, mais son constat s’est répandu comme tel car il **explique, après coup, tant de fuites, de pannes, de compromissions, de plateformes ingérables**.

La loi d’Anderson nous force à accepter ceci : **dans l’informatique sensible, tout est compromis. On ne gagne qu’en connaissance, jamais en magie.**

Le rôle d’un architecte, d’un CISO, d’un builder, ce n’est pas d’ignorer le trilemme.
C’est de **choisir où placer les compromis**, et de le faire en pleine conscience.

Parce que dans un système complexe, vouloir tout à la fois, c’est souvent commencer à tout perdre.

### Références

* [Wikipedia – Anderson’s rule (computer science)](https://en.wikipedia.org/wiki/Anderson%27s_rule_(computer_science)){ target="_blank" }
* [Ross Anderson](https://scholar.google.com/citations?user=WgyDcoUAAAAJ){ target="_blank" }
