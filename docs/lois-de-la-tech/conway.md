# Conway

Tu as déjà remarqué comme les produits d'une entreprise ressemblent souvent… à son organisation interne ?
Des équipes qui ne se parlent pas ? Tu obtiens des outils qui ne se connectent pas.
Des services en silos ? Tu obtiens un produit fragmenté.

Bienvenue dans **la loi de Conway**.

> Any organization that designs a system will produce a design whose structure is a copy of the organization's communication structure - Melvin Edward Conway, 1967

Autrement dit : **l'architecture d'un système tend à refléter la manière dont les équipes communiquent pour le construire**.  
Si les équipes sont en silos, l'architecture le sera souvent aussi.
Si la communication est fluide et cohérente, le produit a de fortes chances de l'être également.

Bref : **on a tendance à construire ce qu'on est** — ou, plus précisément, **ce qu'on pratique au quotidien**.

## Ce que dit vraiment la loi de Conway

La loi de Conway n'est pas une règle technique, ni d'architecture. C'est une **observation sociotechnique**.

Elle ne dit pas : "Vous devez organiser vos équipes de cette façon."

Elle dit : "Quoi que vous fassiez, votre organisation laissera une empreinte sur votre système."

Quelques constats récurrents :

* Une organisation **découpée en équipes indépendantes** produit souvent des systèmes cloisonnés.
* Une communication lourde, hiérarchique ou fragmentée se traduit par des architectures complexes.
* Plusieurs groupes travaillant sur un même produit aboutissent fréquemment à un assemblage de modules qui reflètent leurs frontières.
* À l'inverse, des équipes alignées sur un objectif commun tendent à produire des systèmes plus cohérents.

La loi de Conway ne juge pas.  
Elle **décrit une force invisible mais persistante** : la structure humaine façonne la structure technique.

## D'où vient la loi de Conway ?

La loi de Conway est formulée en 1967 par Melvin E. Conway, informaticien et chercheur américain, dans un article devenu classique : *How Do Committees Invent?
(Datamation, 1968)*

Conway ne cherche pas à établir une règle d'ingénierie logicielle.  
Il observe un phénomène beaucoup plus général : **la façon dont les groupes humains conçoivent des systèmes complexes est contrainte par leur structure de communication**.

À l'époque, les projets logiciels sont menés par de grandes équipes :

* fortement hiérarchisées,
* avec des circuits de décision lents,
* et des coûts de coordination élevés.

Conway constate alors que :

* les interfaces techniques apparaissent exactement là où les équipes doivent se coordonner,
* les frontières organisationnelles deviennent des frontières de conception,
* et les systèmes produits portent la trace directe de leurs conditions humaines de fabrication.

La loi de Conway naît donc d'une observation empirique, pas d'un modèle théorique ni d'une prescription méthodologique.

Pendant longtemps, cette idée reste relativement confidentielle.
Elle gagne en importance à mesure que :

* le logiciel s'industrialise,
* les systèmes deviennent distribués,
* et la complexité dépasse la capacité d'un individu ou d'une équipe isolée.

Avec l'essor des architectures orientées services, puis des microservices, **le lien entre organisation et architecture devient impossible à ignorer**.

Aujourd'hui, la loi de Conway est reconnue comme un pilier de la pensée **sociotechnique** : elle irrigue l'architecture logicielle, le **Domain-Driven Design**, et les approches modernes d'organisation comme **Team Topologies**.

Comme d'autres grands invariants sociotechniques, elle rappelle une chose essentielle : **les choix humains précèdent et contraignent les choix techniques, souvent de manière invisible**.

## Une loi descriptive, pas une fatalité

C'est un point crucial : **la loi de Conway est descriptive, pas déterministe**.

Elle n'affirme pas qu'il est impossible de construire une bonne architecture dans une organisation imparfaite.  
Elle dit que, **sans effort conscient**, l'architecture finira par refléter la structure humaine existante.

Autrement dit :

* Conway agit par défaut.
* L'ignorer, c'est le subir.

Certaines organisations parviennent à produire des architectures cohérentes malgré des structures complexes — mais jamais par hasard.
Elles compensent par :

* des règles d'architecture explicites,
* des mécanismes de coordination,
* ou des choix organisationnels volontaires.

La loi de Conway ne condamne pas : **elle met en lumière le coût de l'incohérence organisationnelle**.

## Quand l'organisation décide de l'architecture (sans le vouloir)

Sans intention claire, l'organisation prend les décisions à la place des architectes :

* les microservices suivent les équipes plutôt que les domaines,
* les APIs reflètent les frontières hiérarchiques,
* les dépendances techniques reproduisent les dépendances managériales.

Ce n'est pas toujours un problème… tant que c'est assumé.
Le vrai risque apparaît lorsque l'architecture subit l'organisation **sans que personne ne l'ait réellement conçue**.

## Quand l'architecture influence l'organisation (le "reverse Conway")

La relation n'est pas toujours à sens unique.

De plus en plus d'organisations utilisent consciemment Conway **à l'envers** :

* elles définissent une architecture cible avec les domaines et leurs frontières,
* elles conçoivent des interfaces claires entre ces domaines,
* puis elles structurent les équipes pour servir cette architecture.

C'est ce qu'on appelle parfois le *reverse Conway maneuver* :

> *Si l'organisation façonne le système, alors changeons l'organisation pour obtenir le système voulu.*

Exemples classiques :

* équipes alignées sur des "bounded contexts" métier,
* ownership clair par domaine,
* équipes autonomes mais interopérables.

Dans ces cas-là, Conway ne disparaît pas — **il devient un levier de design**.

## Ce que la loi de Conway nous apprend vraiment

Au fond, la loi de Conway ne parle pas de logiciels.
Elle parle **d'humains qui collaborent**.

Elle nous rappelle que :

* l'architecture n'est jamais neutre,
* les organigrammes sont aussi des choix techniques,
* et qu'on ne peut pas durablement séparer "problèmes humains" et "problèmes techniques".

Un système complexe est souvent le symptôme :

* d'arbitrages organisationnels non résolus,
* de responsabilités floues,
* ou de communications contraintes.

L'architecture ne se limite plus à :

* des diagrammes,
* des patterns,
* des choix technologiques.

Elle implique aussi :

* le design des flux de communication,
* la clarification des responsabilités,
* le dialogue avec le management.

Un architecte ne conçoit pas seulement un système. **Il conçoit les conditions humaines qui rendent ce système viable dans le temps.**

## En conclusion

La loi de Conway ne dit pas : "Votre organisation est mauvaise, votre produit le sera aussi."  
Elle dit : **"Votre produit raconte une histoire sur la façon dont vous travaillez ensemble."**

On peut subir cette histoire.
Ou décider consciemment de l'écrire.

Car si Conway agit toujours, **la vraie question devient** :

> Quelle structure humaine voulons-nous voir se refléter dans l'architecture de nos systèmes ?

Et cette question dépasse largement le code.
C'est un choix de design organisationnel.

### Références

* Article dans le magazine Datamation, [How Do Committees Invent?](https://www.melconway.com/Home/Conways_Law.html){ target="_blank" }
