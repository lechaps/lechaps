# Atwood

Tu as déjà remarqué que tout finit par tourner dans ton navigateur ?
Des jeux vidéo, des traitements d'images, des outils 3D, des applications de bureau…
Si c'est possible de le faire en JavaScript, quelqu'un finira par le faire.
Bienvenue dans **la loi d'Atwood**.

> Any application that can be written in JavaScript, will eventually be written in JavaScript — Jeff Atwood, 2007

Autrement dit : **si quelque chose peut tourner dans un navigateur, tôt ou tard, ça tournera dans un navigateur**.
Pas forcément parce que c'est la meilleure solution — mais parce que c'est possible.

## Pourquoi la loi d'Atwood est si parlante

### **JavaScript s'est infiltré partout**

À l'origine, JavaScript n'était qu'un petit langage de script pour animer des pages web.
Aujourd'hui, il est partout : serveurs, applications desktop, jeux, IA, outils 3D, objets connectés.

Ce n'est pas parce qu'il est parfait pour tout — mais parce qu'il est **disponible partout**, par défaut.
Le navigateur est devenu une plateforme universelle, et JavaScript son langage natif.

### **Parce que c'est pratique (souvent)**

Tu veux toucher tous les utilisateurs ? Le navigateur est déjà installé.
Tu veux éviter les problèmes d'installation, de mises à jour, de compatibilité système ? Le web s'en charge.

Distribuer une application web coûte moins cher, va plus vite, et réduit énormément les frictions.
Et dans le monde réel, **la praticité gagne souvent sur l'élégance technique**.

### **Parce que les développeurs sont curieux (et un peu fous)**

Si quelque chose *peut* être fait en JavaScript, quelqu'un *essaiera* de le faire.
Par défi, par curiosité, ou simplement parce que c'est là que se trouve l'écosystème.

Résultat : on a vu apparaître :

* des systèmes d'exploitation dans le navigateur,
* des compilateurs écrits en JavaScript,
* des émulateurs, des IDE, des moteurs 3D,
* et même des expériences de calcul quantique simulé.

C'est parfois absurde, parfois brillant — souvent les deux à la fois.
Mais c'est surtout **très représentatif de l'esprit du web**.

## Mais la loi d'Atwood a aussi un côté sombre

La loi d'Atwood n'est pas seulement un constat amusant.
C'est aussi, implicitement, une **mise en garde**.

Tout ce qui peut être écrit en JavaScript **ne devrait pas forcément l'être** :

* certaines applications souffrent de problèmes de performance,
* d'autres consomment beaucoup plus de mémoire que leurs équivalents natifs,
* l'écosystème JavaScript peut devenir complexe, instable, voire fragile,
* Electron et consorts ont parfois remplacé la simplicité par une couche supplémentaire de lourdeur.

La vraie question n'est donc pas :

> *"Est-ce qu'on peut le faire en JavaScript ?"*
> mais :
> *"Est-ce qu'on devrait le faire en JavaScript ?"*

Et la loi d'Atwood nous rappelle que, très souvent, la réponse choisie par l'industrie est "oui" — même quand le débat mérite d'exister.

## D'où vient la loi d'Atwood ?

Cette loi vient de **Jeff Atwood**, **développeur, blogueur et cofondateur de Stack Overflow**. Il la publie en 2007, sur son blog *Coding Horror*.  
À l'époque, c'était presque une blague. Node.js n'existait pas encore, Electron non plus, et JavaScript était loin d'être pris au sérieux hors du navigateur.

Mais la prophétie s'est réalisée.

Avec l'essor de **Node.js**, des frameworks front-end, puis des runtimes hybrides, JavaScript est devenu un **langage de convergence**.
Non pas parce qu'il est le meilleur partout — mais parce qu'il est **le point de rencontre** entre le web, le desktop et le serveur.

## Et aujourd'hui ?

La loi d'Atwood reste vraie… mais elle évolue.

Le navigateur est toujours le socle, mais JavaScript n'est plus seul :

* **WebAssembly** permet d'exécuter Rust, C++, Go ou autres dans le navigateur,
* des langages plus spécialisés réapparaissent là où JavaScript montre ses limites,
* le web devient une plateforme **polyglotte**, même si JavaScript reste la langue commune.

En ce sens, la loi d'Atwood n'annonce pas la victoire éternelle de JavaScript,
mais celle du **navigateur comme environnement universel**.

## En résumé

La **loi d'Atwood**, c'est un mélange d'humour et de lucidité.

Elle ne dit pas que JavaScript est la meilleure solution à tout.
Elle dit que **là où le web va, JavaScript suit — ou ouvre la voie**.

Et elle nous rappelle surtout une chose essentielle en informatique :

> ce qui commence comme une blague finit souvent par devenir la norme.

## Et si ce n'était pas JavaScript qui gagnait… mais le navigateur ?

La loi d'Atwood ressemble à une blague, mais elle décrit une force très réelle : **la distribution**.
Quand une application doit réduire la friction (installation, compatibilité, mises à jour), le navigateur devient une cible naturelle.

Et cette migration n'arrive pas seule : elle est souvent précédée par un logiciel qui **grossit**, puis qui **devient programmable**.

**[Lire la suite : Zawinski × Greenspun × Atwood — Logiciel](../humanops/logiciel.md)**

### Références

* [Jeff Atwood — *Any Application That Can Be Written in JavaScript, Will Eventually Be Written in JavaScript* (Coding Horror, 2007)](https://blog.codinghorror.com/the-principle-of-least-power/){ target="_blank" }
* [Wikipedia – *Atwood's Law*](https://en.wikipedia.org/wiki/Atwood%27s_law){ target="_blank" }