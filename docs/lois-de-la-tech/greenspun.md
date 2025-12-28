# Greenspun

Tu as déjà remarqué qu'un projet “simple” finit toujours par devenir compliqué ?
Quelques règles métier, deux ou trois exceptions, un peu de configuration…
Puis des scripts.
Puis des templates.
Puis une syntaxe.

Bienvenue dans **la loi de Greenspun**.

> Any sufficiently complicated program in C or Fortran contains an ad hoc, informally-specified, bug-ridden, slow implementation of half of Common Lisp — Philip Greenspun, 1999

Autrement dit : **les systèmes ambitieux finissent par réinventer des langages — souvent sans le vouloir, et rarement bien**.

## Pourquoi la loi de Greenspun est si parlante

### **Parce que la complexité ne disparaît jamais**

Quand un logiciel grossit, la complexité ne s'évapore pas.
Elle se déplace.

On empile :

* des règles métier,
* des cas particuliers,
* des exceptions,
* des fichiers de configuration,
* des scripts d'automatisation,
* des templates “juste pour ce cas-là”.

À force, on ne programme plus vraiment.
On **décrit** ce que le système doit faire.

Et décrire un comportement complexe… c'est déjà écrire un langage.

### **Parce qu'un langage, c'est une solution naturelle**

Quand tout ne peut plus être codé “en dur”, on invente :

* une syntaxe,
* des mots-clés,
* des conventions,
* une grammaire implicite.

Pas par plaisir.
Par nécessité.

Un langage apparaît quand :

* il y a trop de règles pour être codées une par une,
* l'équipe devient trop grande pour tout expliquer oralement,
* l'automatisation devient indispensable à la survie du projet.

Le DSL interne n'est pas un accident créatif.
C'est **un mécanisme de survie**.

### **Parce que les équipes ne peuvent plus tout se dire**

Plus une équipe grandit, plus elle a besoin de formaliser.
Et plus elle formalise, plus elle abstrait.

C'est là que la **loi de Conway** entre en jeu :

> *“Les systèmes reflètent les structures de communication des organisations qui les conçoivent.”*

Quand la communication humaine ne suffit plus, le logiciel prend le relais.
Et le logiciel parle… en langage.

## Mais la loi de Greenspun a un côté ironique

Philip Greenspun ne célébrait pas cette tendance.
Il la **constatait avec un certain sarcasme**.

Car ces langages improvisés sont souvent :

* mal spécifiés,
* incomplets,
* difficilement maintenables,
* pleins de bugs subtils,
* et étonnamment lents.

Autrement dit :
au lieu d'utiliser un vrai langage conçu pour ça,
on recrée **la moitié d'un langage existant — en moins bien**.

C'est là toute l'ironie de la loi de Greenspun :

> on invente un langage… pour éviter d'en apprendre un.

## D'où vient la loi de Greenspun ?

Cette loi vient de **Philip Greenspun**, **informaticien et auteur**, formulée en **1999** dans son livre *Philip and Alex's Guide to Web Publishing*.

Il y écrit cette phrase devenue célèbre :

> *“Any sufficiently complicated program in C or Fortran contains an ad hoc, informally-specified, bug-ridden, slow implementation of half of Common Lisp.”*

À l'époque, il parle surtout de C et de Fortran.
Mais la loi a très bien survécu à ces langages.

Aujourd'hui, on la retrouve partout :

* dans les moteurs de règles,
* les outils no-code / low-code,
* les pipelines ETL,
* les CRM,
* les systèmes de configuration “avancés”.

Dès qu'un outil devient puissant, il devient… programmable.

## Et aujourd'hui ?

La loi de Greenspun est plus actuelle que jamais.

Chaque fois qu'un outil promet :

> *“Vous n'aurez plus besoin de coder”*

il finit par introduire :

* des expressions,
* des conditions,
* des workflows,
* des scripts,
* une syntaxe maison.

Parce qu'on ne supprime pas la programmation.
On la **déplace**.

Les logiciels no-code ne sont pas la fin du code.
Ce sont des **langages déguisés**.

## En résumé

La **loi de Greenspun**, c'est un mélange de lucidité et d'ironie.

Elle ne dit pas que créer des langages est une erreur.
Elle dit que **ne pas reconnaître qu'on en crée un l'est**.

Dès qu'un système devient complexe :

* soit tu assumes un vrai langage,
* soit tu en construis un… sans les outils pour le maîtriser.

Et comme souvent en informatique :

> ce qu'on voulait éviter finit par nous rattraper.

### Références

* [Philip Greenspun — *Philip and Alex's Guide to Web Publishing* (1999)](http://philip.greenspun.com/panda/){ target="_blank" }
* [Wikipedia — *Greenspun's Tenth Rule*](https://en.wikipedia.org/wiki/Greenspun%27s_tenth_rule){ target="_blank" }
