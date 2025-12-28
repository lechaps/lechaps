# Logiciel : Zawinski x Greenspun x Atwood

> Grossir → devenir langage → finir sur le web

Tu as peut-être déjà remarqué un truc étrange dans le développement logiciel.

Les petites applications simples deviennent des monstres. Les systèmes complexes finissent par réinventer un langage — parfois sans que personne ne l'ait voulu. Et à la fin, tout semble inexorablement vouloir finir… dans ton navigateur.

Ce n'est pas un hasard.  
Ce n'est même pas une erreur de développeur.  
C'est le résultat d'une physique socio-technique du logiciel.

Trois lois humoristiques — **Zawinski, Greenspun et Atwood** - décrivent ce cycle avec une lucidité troublante :

1. **Le logiciel grossit.**
2. **Sa complexité créé un langage.**
3. **Son exécution migre dans le navigateur.**

Ensemble, elles révèlent un mécanisme profond, beaucoup plus économique qu'informatique.

## 1. La loi de Zawinski — Tout logiciel finit par grossir (car il doit vendre)

Jamie Zawinski, figure emblématique de Netscape et d'Emacs, l'a formulé ainsi :

> Every program attempts to expand until it can read mail. Those programs which cannot so expand are replaced by ones which can.

On rit… puis on regarde notre roadmap produit, et on rit moins.

Pourquoi les logiciels gonflent-ils ?  
Pas à cause du code, mais à cause du marché, moteurs du "feature creep" : 

* Pression commerciale : une feature se vend, se montre, s'annonce.
* Différenciation concurrentielle : "Ils l'ont fait → on doit le faire."
* Modèle SaaS : chaque upgrade doit ajouter quelque chose.
* Psychologie des devs : créer est gratifiant, supprimer ne l'est pas.

Les features génèrent du revenu.
La simplicité, elle, ne génère pas d'abonnement.

Ce phénomène est directement amplifié par la loi de Goodhart : Si le succès produit est mesuré en fonctionnalités, alors le produit gonfle — qu'elles soient utiles ou non.

Le logiciel enfle non pas par folie technique, mais par incitation économique mesurable.

## 2. La loi de Greenspun — Le logiciel devient un langage (pour survivre)

Quand le logiciel gonfle, la complexité explose. On multiplie :

* règles métier,
* exceptions,
* configurations,
* scripts,
* templates…

Puis, un jour, sans cérémonie, on a fabriqué un langage.

Philip Greenspun l'avait prédit en 1999     dans son ouvrage de 1999 *Philip and Alex's Guide to Web Publishing* :

> Any sufficiently complicated program in C or Fortran contains an ad hoc, informally-specified, bug-ridden, slow implementation of half of Common Lisp.

Autrement dit : les systèmes ambitieux **réinventent mal des langages existants**.

Pourquoi un langage émerge ?

* Pour exprimer un nombre croissant de règles.
* Parce que l'équipe grossit et ne peut plus "tout se dire".
* Pour automatiser ce qui ne peut plus se maintenir à la main.

Le DSL interne n'est alors pas un accident créatif, mais **un mécanisme organisationnel** : il encode ce que les humains ne peuvent plus gérer oralement.

C'est la loi de Conway qui l'explique : "Les systèmes reflètent les structures de communication de l'organisation qui les construit."

Plus il y a de monde → plus il y a d'abstraction → plus il y a de "langage".

Et c'est pour cela que les logiciels no-code, low-code, CRM, ETL… deviennent tous des langages complets. Ils n'ont pas le choix.

## 3. La loi d'Atwood — Tout finit dans un navigateur (car il élimine la friction)

Jeff Atwood, cofondateur de Stack Overflow, l'a formulé en 2007 :

> Any software that can be written in JavaScript will eventually be written in JavaScript.

Ce n'est pas une blague geek : **c'est un constat d'économie de distribution**.

Le navigateur gagne, car il fait disparaître la barrière d'accès : 

* aucune installation,
* multi-device immédiat,
* partage universel via un lien,
* aucune permission d'App Store,
* aucune dépendance au matériel.

Le navigateur n'a pas gagné parce que JavaScript est élégant.  
Il a gagné parce qu'il est déjà installé partout, chez tout le monde.

Et maintenant ?  
Avec WebAssembly, on peut y exécuter C, Rust, Go, Python…

Résultat :

* Greenspun industrialisé (on évite de réinventer des langages)
* Atwood amplifié (le navigateur devient une VM universelle)

Ce n'est plus "le web en JavaScript".
C'est le web comme plateforme mondiale d'exécution logicielle.

## 4. Le cycle complet : une gravité socio-technique

Ces lois ne parlent pas de code. Elles décrivent l'infrastructure invisible supérieure :

| Force                                      | Conséquence                                     |
| ------------------------------------------ | ----------------------------------------------- |
| Économie du logiciel (SaaS, marché, vente) | ➜ Zawinski : le logiciel grossit                |
| Organisation & complexité métier           | ➜ Greenspun : le logiciel devient un langage    |
| Distribution & accès universel             | ➜ Atwood : le logiciel finit dans le navigateur |

Le logiciel n'évolue pas parce que les développeurs le veulent, mais parce que les forces autour de lui l'y poussent.

Ce qui paraissait absurde devient logique.  
Ce qui ressemblait à du chaos devient déterministe.

## 5. Un contre-pied utile : peut-on échapper à ce destin ?

Oui, mais seulement avec des architectures qui externalisent la croissance, par exemple :

* plugins (Linux, Blender, VS Code)
* microservices indépendants
* écosystèmes plutôt que monolithes

On ne stoppe pas la croissance.  
On la répartit.

C'est le seul moyen de lutter contre Zawinski sans s'effondrer sous son poids.

## Conclusion

Les lois de Zawinski, Greenspun et Atwood ne ridiculisent pas les développeurs.
Elles expliquent **comment l'économie, l'organisation et la distribution sculptent chaque ligne de code**.

* Le logiciel grossit par incitation économique.
* Il devient un langage par nécessité organisationnelle.
* Il finit dans le navigateur par optimisation de distribution.

Ce n'est pas absurde.  
C'est une évolution naturelle.  
Et c'est exactement ce qui se produit, partout, en ce moment-même.
