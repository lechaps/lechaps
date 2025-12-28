# Hyrum

Tu as déjà modifié une API "sans impact", un champ "interne", un comportement "non documenté"….  
…et tout a explosé en prod chez quelqu'un que tu ne connaissais même pas ?  
Ou à l'inverse, déjà dépendu d'un comportement jamais promis, jamais écrit, mais *qui marchait*… jusqu'au jour où il disparaît ?

Félicitations : tu viens de rencontrer **la loi de Hyrum**.

> With a sufficient number of users of an API,
> it does not matter what you promise in the contract:
> all observable behaviors of your system will be depended on by somebody.

Autrement dit : **dès que ton système a assez d'utilisateurs, absolument tout ce qu'il fait devient une API**.

Même ce que tu n'as jamais voulu exposer.  
Même ce que tu pensais "temporaire".  
Même ce que tu n'as jamais documenté.

## Pourquoi la loi de Hyrum fait (un peu) mal

Parce qu'elle dit tout haut ce que beaucoup découvrent trop tard :

* **La documentation ne définit pas l'usage réel.**
* **Les utilisateurs observent, testent, bricolent.**
* **Et ils construisent dessus.**

Un ordre de tri implicite.  
Un message d'erreur précis.  
Un délai de réponse "habituel".  
Un champ toujours présent "par hasard".

Quelqu'un, quelque part, en dépend.

La loi de Hyrum nous rappelle une vérité inconfortable : **ce que ton système fait compte plus que ce que tu dis qu'il fait**.

Et ce n'est pas un problème de mauvaise foi. C'est un problème d'échelle.

Quand il y a peu d'utilisateurs, tu peux corriger, expliquer, prévenir.  
Quand il y en a des milliers (ou des millions), **le comportement devient un contrat de fait**.

## Ce que la loi de Hyrum change dans ta manière de concevoir

Elle force à changer de posture.

### 1. "Ce n'est pas documenté" n'est pas une défense

Si c'est observable, c'est exploitable.  
Si c'est exploitable, c'est utilisé.  
Si c'est utilisé, **c'est une promesse implicite**.

La loi de Hyrum ne dit pas que les utilisateurs ont raison.  
Elle dit qu'ils existent — et qu'ils s'adaptent.

### 2. Chaque détail est un engagement potentiel

Un format de date.  
Une précision numérique.  
Un ordre d'exécution.  
Un message d'erreur stable.

Tout peut devenir une dépendance.

C'est pour ça que les systèmes matures :

* figent certains comportements,
* versionnent explicitement les ruptures,
* et traitent le changement comme un acte grave, pas anodin.

### 3. L'API, ce n'est pas juste l'interface

Ce n'est pas seulement :

* les endpoints,
* les signatures,
* le schéma OpenAPI.

C'est **l'ensemble des comportements observables**.

La performance *est* une API.  
Les erreurs *sont* une API.  
Les effets de bord *sont* une API.

## D'où vient la loi de Hyrum ?

La loi de Hyrum est attribuée à **Hyrum Wright**, ingénieur chez Google. Elle est devenue populaire grâce à sa diffusion par **Titus Winters**, **Tom Manshreck** et **Hyrum Wright** dans le livre *Software Engineering at Google*.

Chez Google, où les systèmes comptent des milliards d'utilisateurs et des millions de dépendances internes, cette loi n'est pas théorique : **elle est vécue au quotidien**.

Ils ont appris — parfois dans la douleur — qu'un changement "raisonnable" pouvait casser des usages invisibles, mais critiques. Et que la seule vraie question n'est pas *"avons-nous promis ?"*. 
Mais *"est-ce observable ?"*

## La leçon derrière la loi

La loi de Hyrum ne dit pas : "N'évolue jamais."  
Elle dit : **"Évolue en sachant que tu engages des gens que tu ne vois pas."**

C'est une loi d'humilité.  
Une loi de responsabilité.  
Une loi qui rappelle que **le succès crée des contraintes invisibles**.

Plus ton système est utilisé, plus il devient rigide.  
Pas par faiblesse.  
Mais parce que **la confiance se cristallise dans les détails**.

En somme, la loi de Hyrum nous enseigne ceci :

* **À grande échelle, chaque comportement est une promesse.**
* **Et chaque promesse mérite d'être traitée avec respect.**

Pas seulement pour les systèmes. Mais pour tout ce qui crée des dépendances humaines.

Car quand quelqu'un s'appuie sur toi — même sans contrat explicite — tu fais déjà partie de son architecture.

### Références

* Hyrum Wright, [Hyrum's Law - citation originale](https://www.hyrumslaw.com/){ target="_blank" }
* Titus Winters, Tom Manshreck, Hyrum Wright — [Software Engineering at Google](https://www.amazon.fr/Software-Engineering-Google-Lessons-Programming/dp/1492082791){ target="_blank" }
