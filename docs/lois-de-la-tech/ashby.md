# Ashby

Tu as déjà vu un système qu'on essaye de piloter avec un tableau de bord trop simple — et constaté qu'à chaque fois qu'il se passe quelque chose d'imprévu, le contrôleur perd les pédales, réagit trop tard ou ne réagit pas du tout ?
Tu t'es déjà retrouvé face à une situation tellement complexe que plus tu essayais de la simplifier, plus elle devenait incontrôlable ?
Une équipe qui grossit, un projet qui se ramifie, une organisation où chaque règle crée un nouveau problème ?
Félicitations, tu viens de croiser la loi d'Ashby.

> The number of states in a control mechanism must be greater than or equal to the number of states in the system it controls.

Autrement dit : **Si ton environnement devient plus subtil, plus instable ou plus riche, tes outils et ta façon de le piloter doivent monter en gamme aussi. Sinon, tu te fais dépasser**.

Bref : **Seule la complexité peut maîtriser la complexité**— ou, plus précisément : **seule une variété de réponses suffisante peut maîtriser la variété du réel**.
Et si tu ne veux pas l'augmenter, tu devras apprendre à la **redéployer**, la **filtrer** ou **l'absorber**.

## Pourquoi la loi d'Ashby est si parlante

* **Un système simple ne peut pas gérer un monde complexe**. Si ton entreprise, ton équipe ou ton logiciel ne sait réagir qu'à un seul scénario, le premier imprévu le fera exploser. (_cf lois de Murphy ou de Finagle_)
* **La rigidité tue l'adaptation**. Quand tout est figé dans des process, plus personne ne sait quoi faire quand la réalité déborde du cadre.
* **La diversité sauve les systèmes**. Plus il y a de points de vue, de stratégies et de réponses possibles, plus le système devient résilient.
* **La variété a un coût**. Plus de réponses signifie aussi plus de coordination, plus de charge cognitive, plus de gouvernance à inventer. Ce n'est pas « ajouter du désordre », mais décider où la variété est utile — et où elle doit être filtrée.
* **La complexité peut aussi être absorbée ou filtrée**. Parfois, on n'a pas besoin d'ajouter de variété : on peut en retirer (standardisation), ou la déplacer (buffers, abstractions).

Concrètement :

* Une entreprise affronte la complexité du marché par **la diversité de ses talents**, mais aussi par sa capacité à **réduire le bruit** (priorités claires, stratégies nettes).
* **Un manager adapte son style selon les situations**, mais crée aussi des cadres qui réduisent la variété inutile.
* Un algorithme efficace anticipe plusieurs scénarios au lieu de n'en prévoir qu'un — ou **compacte** la complexité via des modèles plus abstraits.

La loi dit : _plus de variété = plus de stabilité_.  
Mais **pas n'importe quelle variété**.  
Pas du chaos. **De la capacité d'adaptation**.  
Et parfois : **moins de variété perçue = plus de stabilité** (si on filtre intelligemment).

### Architecturer la complexité — au lieu de la subir

Ajouter de la variété, ce n'est pas rajouter du bruit. C'est créer plus de façons de répondre au réel — et parfois, c'est **réduire** ou **détourner** la complexité avant qu'elle n'atteigne le cœur du système.

Car la variété a un prix : plus d'options = plus de charge mentale, plus de synchronisation, plus de risques de dispersion. Il faut donc **la placer au bon endroit, et pas partout**.

Exemples :

| Situation complexe            | Réponse avec variété (ou réduction maîtrisée)                           |
| ----------------------------- | ----------------------------------------------------------------------- |
| Process trop rigide           | Décisions distribuées, autonomie maîtrisée — ou simplification ciblée   |
| Produit qui grossit           | Modules indépendants, API claires, abstraction qui masque la complexité |
| Déploiements risqués          | Feature flags, rollbacks instantanés, environnement tampon              |
| Charge de support qui explose | FAQ évolutive, IA assistée, rotation d'équipe, filtrage des demandes    |

Ce que la loi d'Ashby rappelle :

* On peut augmenter la variété (plus de stratégies),
* réduire celle qu'on subit (standardiser, filtrer),
* ou l'absorber via des mécanismes tampons (queues, logs, dashboards, tooling).

La complexité ne se combat pas : elle se **structure**, en créant la bonne variété au bon niveau , se **filtre**, ou **s'encapsule**.

### Le danger n'est pas la complexité → c'est la fausse simplicité

Un seul KPI.  
Un process unique.  
Un seul mode de management.  
Ça rassure — jusqu'à ce que la réalité refuse de rentrer dans la case.  

Simplifier trop vite = se rendre aveugle.  
Simplifier trop tôt = perdre l'information dont on aura besoin demain.

La vraie question n'est pas comment rendre le système simple, mais :
comment lui donner assez de réponses pour rester vivant — tout en filtrant ce qui n'a pas besoin de l'être ?

Autrement dit : **La stabilité n'est pas réductrice : elle est élastique**.

## D'où vient la loi d'Ashby ?

Cette loi vient de W. Ross Ashby (1903–1972), **psychiatre, mathématicien et pionnier de la cybernétique**.  
En 1956, il publie _An Introduction to Cybernetics_, où il énonce ce principe devenu fondamental :

> If a system is to be stable, the number of states it can take must be greater than the number of states in its environment.

Ashby l'appelait **la loi de la variété requise** (Law of Requisite Variety).

Depuis, elle a marqué **la théorie des systèmes, le management, la biologie, et même l'intelligence artificielle** — où la capacité à compact­er la complexité (via des modèles, des abstractions ou des embeddings) devient tout aussi cruciale que la capacité à la **générer**.

Et elle ne dit pas seulement : « ajoute de la variété »  
Elle dit aussi : « absorbe, filtre ou transforme la variété » par des abstractions, des rôles, des modules, des standards… tout ce qui réalloue la complexité.

C'est elle qui explique pourquoi **plus un environnement est changeant, plus l'organisation doit être agile pour survivre** — mais aussi pourquoi cette agilité doit être **canalisée, mesurée, entretenue**, et non empilée sans réflexion.

En somme, la loi d'Ashby est un vaccin contre la simplification excessive et contre l'excès de variété non maîtrisée. Elle nous rappelle qu'on ne combat pas le chaos en le niant — ni en l'imposant — mais en apprenant à danser avec lui, avec les bons appuis.

**La stabilité ne vient pas du contrôle. Elle vient de la capacité à répondre à l'imprévu plus vite que le monde ne change — et à choisir où mettre la complexité et à la façonner pour qu'elle reste à taille humaine.**

### Références

* [W. Ross Ashby, An Introduction to Cybernetics](https://ashby.info/Ashby-Introduction-to-Cybernetics.pdf){ target="_blank" }
* [Wikipedia - Law of Requisite Variety](https://en.wikipedia.org/wiki/Variety_%28cybernetics%29){ target="_blank" }
* [Edge.org](https://www.edge.org/response-detail/27150){ target="_blank" }
