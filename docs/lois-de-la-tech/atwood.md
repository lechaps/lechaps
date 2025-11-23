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

La blague est évidente.  
La vérité derrière… encore plus.

### Pourquoi les logiciels gonflent-ils autant ?

* **La pression des utilisateurs.** On veut toujours un bouton de plus, un menu de plus, une option de plus.
* **La concurrence.** « Les autres l’ont, donc il nous le faut aussi. »
* **Les modes technologiques.**
  * Intégrer un chat.
  * Intégrer une IA.
  * Intégrer des commentaires.
  * Intégrer un export PDF.
  * Intégrer *tout*.
* **Les développeurs eux-mêmes.** Parce que c’est amusant d’ajouter des trucs.

Résultat : **n’importe quelle application finit par devenir tentaculaire.**

Ce phénomène — le fameux *feature creep* — est tellement universel que Zawinski en a fait une loi.

Et elle forme la **première étape** de notre trajectoire : **le logiciel grossit**.

## 2. La loi de Greenspun — Tout système complexe finit par devenir un langage

Quand un logiciel gonfle, ses besoins explosent.  
On ajoute des règles métier.  
Puis des exceptions.  
Puis un système de templates.  
Puis un mini-langage d’expressions…

Et, sans s’en rendre compte, on finit par créer un **langage interne**.

C’est exactement ce que Philip Greenspun a formulé dans son ouvrage de 1999 *Philip and Alex’s Guide to Web Publishing* :

> Any sufficiently complicated program in C or Fortran contains an ad hoc, informally-specified, bug-ridden, slow implementation of half of Common Lisp.

En clair : **dès qu’un logiciel devient ambitieux, il réinvente — mal — un langage existant.**

### Pourquoi cette dérive est-elle inévitable ?

* **La complexité appelle l’abstraction.** Plus il y a de règles, plus il faut un moyen cohérent de les exprimer.
* **Les développeurs bricolent.** Beaucoup de “petites solutions rapides” deviennent des DSL cachés.
* **Les langages expressifs existent pour une raison.** Lisp, notamment, a été pensé pour gérer ce genre de complexité. Ignorer ces outils revient souvent… à les recréer accidentellement.

C’est pour cela que tant de projets contiennent aujourd’hui :

* un moteur de règles,
* un DSL maison,
* un système de configuration tellement puissant qu’il devient un langage,
* un micro-interpréteur bricolé.

C’est **drôle**, **triste**, **précis** — et universel.

Et c’est la **deuxième étape** de notre trajectoire : **le logiciel devient un langage**.

## 3. La loi d’Atwood — Tout finit par tourner dans un navigateur

Quand un logiciel a grossi (Zawinski),
qu’il a développé son propre langage interne (Greenspun),
il lui reste encore un territoire à conquérir :
**le navigateur**.

Jeff Atwood, cofondateur de Stack Overflow, l’a formulé en 2007 :

> Any software that can be written in JavaScript will eventually be written in JavaScript.

Autrement dit : **si quelque chose peut tourner dans le navigateur, quelqu’un finira par le faire.**

Et ce n’est pas juste une blague.

### Pourquoi le navigateur attire tout ?

* **JavaScript est partout.** De simple langage d’animation, il est devenu le moteur du web moderne : serveurs, apps desktop, jeux, IA, IoT…
* **Le navigateur simplifie tout.**
  * Pas d’installation.
  * Pas de compatibilité.
  * Pas de mises à jour manuelles.
  * Une simple URL suffit.
* **Les développeurs sont curieux.** Si on *peut* faire quelque chose en JavaScript… quelqu’un *va* essayer.

Aujourd’hui, il n’est plus surprenant de voir :

* des systèmes d’exploitation,
* des compilateurs,
* des simulateurs quantiques,
* des environnements de développement complets,

tourner directement dans Chrome ou Firefox.

C’est **absurde**.  
C’est **génial**.  
C’est **le web**.  

Et c’est la **troisième étape** : **le logiciel finit dans ton navigateur**.

## 4. Comment les trois lois se combinent

Quand on assemble les trois lois, on obtient la trajectoire complète de presque tous les logiciels modernes :

### **1) Zawinski → Le logiciel grossit**

Les fonctionnalités s’accumulent, les cas particuliers explosent.

### **2) Greenspun → Le logiciel devient un langage**

Pour gérer cette complexité, on crée des DSL, des moteurs d’expressions, des règles.

### **3) Atwood → Le langage finit dans le navigateur**

Parce que le navigateur est la plateforme la plus simple, la plus universelle, la plus compatible.

### Résultat ?

> Toute application suffisamment ambitieuse finit par devenir trop grosse, trop complexe… et parfaitement à son aise dans un navigateur.

## 5. On le voit partout : des exemples modernes

### **Les applications web modernes**

Frameworks, outils, SaaS…. 
Ils contiennent :

* des DSL de templates,
* des moteurs d’expression,
* des systèmes de validation et de règles métier,

→ **Greenspun**.

Ils se chargent au fil des versions → **Zawinski**.

Ils tournent dans le navigateur → **Atwood**.

### **Les outils no-code / low-code**

Ils commencent comme des éditeurs simples. Puis ajoutent :

* règles,
* formules,
* workflows,
* transformations de données…

En un clin d’œil, ils deviennent des **langages entiers**, exécutés **dans le navigateur**.

### **WebAssembly**

WASM est la réponse industrielle à Greenspun + Atwood.

Plutôt que de réinventer chaque langage en JavaScript (Greenspun), on compile les vrais langages (C, Rust, Go, Python…) vers une cible universelle : **le runtime du navigateur** (Atwood).

## Conclusion

Ces trois lois ne disent pas que les développeurs sont fous. Elles révèlent simplement une mécanique profonde du logiciel moderne :

* **Les logiciels grossissent naturellement** — Zawinski.
* **Cette complexité finit par engendrer un langage interne** — Greenspun.
* **Et ce langage finit presque toujours par tourner dans un navigateur** — Atwood.

Autrement dit :

> Le destin d’un logiciel est de devenir énorme, abstrait… et parfaitement confortable dans Chrome.

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
