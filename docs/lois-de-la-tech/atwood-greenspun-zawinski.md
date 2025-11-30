# Atwood, Greenspun & Zawinski

## Pourquoi les logiciels finissent par grossir, devenir un langage… et tourner dans ton navigateur

Tu as peut-être déjà remarqué un truc étrange dans le développement logiciel.

Les petites applications simples deviennent des monstres. Les systèmes complexes se transforment en langages — parfois sans que personne ne l’ait voulu. Et à la fin, tout semble inexorablement vouloir tourner… dans ton navigateur.

Ce n’est pas un hasard.  
C’est la conséquence de trois lois célèbres — souvent humoristiques, toujours vraies :
**Zawinski, Greenspun et Atwood**.

Ensemble, elles décrivent **le destin naturel de tout logiciel** :

1. **Il grossit.**
2. **Il devient un langage.**
3. **Il finit dans ton navigateur.**

Bienvenue dans **la triple gravité du logiciel moderne**.

## 1. La loi de Zawinski — Tout logiciel finit par grossir

Tu l’as déjà vu : une application commence simple, utile, claire…
Puis, au fil des versions, elle absorbe des fonctionnalités qui n’ont plus rien à voir avec son idée de départ.

Jamie Zawinski, figure emblématique de Netscape et d’Emacs, a résumé le phénomène ainsi :

> Every program attempts to expand until it can read mail. Those programs which cannot so expand are replaced by ones which can.

On en rit, mais c’est terriblement vrai.

Pourquoi les logiciels gonflent-ils autant ?

* **La pression des utilisateurs**. Toujours un bouton de plus.
* **La compétition**. « Ils l’ont fait → il faut le faire. »
* **Les tendances technologiques**. analytics, Chat, IA, bref tout.
* **Les développeurs**. Parce que créer, c’est gratifiant.

Résultat : **le feature creep**.
N’importe quelle application finit par devenir tentaculaire.

C’est **la première étape** : le logiciel grossit.

## 2. La loi de Greenspun — Tout système complexe finit par devenir un langage

Quand un logiciel gonfle, la complexité s’installe.  
On ajoute des règles métier. Puis des exceptions.  
Puis un système de templates. Puis un DSL maison.  
Et un jour, sans l’avoir vraiment décidé, on a écrit un langage.

C’est exactement ce que Philip Greenspun a formulé dans son ouvrage de 1999 *Philip and Alex’s Guide to Web Publishing* :

> Any sufficiently complicated program in C or Fortran contains an ad hoc, informally-specified, bug-ridden, slow implementation of half of Common Lisp.

En clair : **dès qu’un logiciel devient ambitieux, **il réinvente mal quelque chose d’existant.**

### Pourquoi cette dérive est-elle inévitable ?

* **La complexité appelle l’abstraction.** Plus il y a de règles, plus il faut un moyen cohérent de les exprimer.
* **Les développeurs bricolent.** Beaucoup de “petites solutions rapides” deviennent des DSL cachés.
* **Les langages expressifs existent pour une raison.** Lisp, notamment, a été pensé pour gérer ce genre de complexité. Ignorer ces outils revient souvent… à les recréer accidentellement.

Et c’est ainsi qu’apparaissent, partout, des :

* moteurs d’expression,
* systèmes de règles,
* DSL cachés dans la configuration.

C’est **la deuxième étape**: le logiciel devient un langage.

## 3. La loi d’Atwood — Tout finit par tourner dans un navigateur

Quand un logiciel a grossi (Zawinski),
qu’il a développé son propre langage interne (Greenspun),
il lui reste encore un territoire à conquérir : **le navigateur**.

Jeff Atwood, cofondateur de Stack Overflow, l’a formulé en 2007 :

> Any software that can be written in JavaScript will eventually be written in JavaScript.

Autrement dit : **si quelque chose peut tourner dans le navigateur, quelqu’un finira par le faire.**

Et ce n’est pas juste une blague.

### Pourquoi le navigateur attire tout ?

* La distribution est instantanée. 0 installation → 1 URL.
* Le web est l’environnement universel. Desktop, mobile, tablette.
* JavaScript est devenu un runtime généraliste. Serveur, client, jeux, IA…

C’est **fou**.  
C’est **génial**.  
Et c’est aujourd’hui la norme.  

Et c’est la **troisième étape** : **le logiciel finit dans ton navigateur**.

## 4. Ce qu’on oublie souvent : la mécanique socio-technique

Ces trois lois ne parlent pas que de code. Elles révèlent comment produit, organisation et technique s’influencent mutuellement.

### Pourquoi il grossit ? → Zawinski expliqué par le business

* Roadmap qui ajoute.
* Peur de retirer.
* Marché qui exige.

Une feature vend.  
Une feature différencie.  
Une feature justifie la version suivante.  

→ Le logiciel enfle par pression économique plus que technique.

### Pourquoi il devient un langage ? → Greenspun expliqué par l’évolution des équipes

Plus de développeurs → plus de règles → plus d’abstraction.  
La connaissance orale devient code.  
Les scripts deviennent DSL.  
Les DSL deviennent architecture.  

→ Le langage émerge comme mécanisme de survie organisationnelle.

### Pourquoi il finit dans le navigateur ? → Atwood expliqué par l’accès et la distribution

Le navigateur n’a pas gagné parce que JS est beau.  
Il a gagné **parce qu’il est déjà installé partout**.

→ Le web est la plateforme à friction minimale.

## 5. On le voit partout : des exemples modernes

### **Les applications web modernes**

* Un framework = fonctionnalités qui s’empilent → Zawinski
* Un template engine devient un mini-langage → Greenspun
* Tout s’exécute en front → Atwood

### **Les outils no-code / low-code**

Ils commencent comme des éditeurs simples. Puis ajoutent :

* règles,
* formules,
* workflows,
* transformations de données…

En un clin d’œil, ils deviennent des **langages entiers**, exécutés **dans le navigateur**.

### **WebAssembly**

WASM est la réponse industrielle à Greenspun + Atwood.

Plutôt que tout réinventer en JS,
on compile Rust, C, Go, Python…

→ Greenspun industrialisé  
→ Atwood architecturé

## Conclusion

Ces trois lois ne disent pas que les développeurs sont fous. Elles révèlent simplement une mécanique profonde du logiciel moderne :

* **Les logiciels grossissent naturellement** — Zawinski.
* **Cette complexité finit par engendrer un langage interne** — Greenspun.
* **Et ce langage finit presque toujours par tourner dans un navigateur** — Atwood.

Et derrière ce cycle, il y a plus qu’un codebase : il y a le marché, l’équipe, les utilisateurs.

C’est parfois absurde.  
C’est souvent magnifique.  
Et surtout : **c’est exactement ce qui est en train de se produire — partout, tout le temps.**

### Références

* [Jeff Atwood — *Any Application That Can Be Written in JavaScript, Will Eventually Be Written in JavaScript* (Coding Horror, 2007)](https://blog.codinghorror.com/the-principle-of-least-power/){ target="_blank" }
* [Wikipedia – *Atwood’s Law*](https://en.wikipedia.org/wiki/Atwood%27s_law){ target="_blank" }
* [Philip Greenspun — *Philip and Alex’s Guide to Web Publishing* (1999)](http://philip.greenspun.com/panda/){ target="_blank" }
* [Wikipedia — *Greenspun’s Tenth Rule*](https://en.wikipedia.org/wiki/Greenspun%27s_tenth_rule){ target="_blank" }
* Jamie Zawinski – [jwz.org](https://www.jwz.org/){ target="_blank" }
* [Wikipedia](https://en.wikipedia.org/wiki/Zawinski%27s_law){ target="_blank" }
