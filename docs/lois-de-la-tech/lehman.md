# Lehman

Tu as déjà bossé sur un logiciel qui semblait simple au début, et qui, version après version, s'est transformé en une créature imprévisible ?  
Chaque mise à jour casse autre chose, chaque correction en crée deux nouvelles….  
Bienvenue dans **les lois de Lehman**, un ensemble de huit lois qui décrivent comment les logiciels évoluent lorsqu'ils sont utilisés dans le monde réel.

> A software system that is used in the real world must continually be adapted, or it becomes progressively less useful.

Autrement dit : **un logiciel vivant doit changer — sinon, il meurt**.
Le monde avance ; le logiciel aussi. Ce qui ne s'adapte pas décroche. Ce qui ne s'entretient pas se dégrade. Un programme n'est pas figé : c'est un organisme en évolution.

## Pourquoi les lois de Lehman sont si parlantes ?

Les lois de Lehman ressemblent moins à des règles d'ingénierie qu'à des lois naturelles. Elles concernent les systèmes E-type : les logiciels utilisés dans un environnement réel (entreprise, marché, usages, contraintes). Contrairement aux programmes « fermés » (scripts, prototypes, calculs isolés), ils ne peuvent pas s'arrêter de changer. :

1. **Continuing Change** : Un logiciel vivant doit être modifié en continu, ou il devient obsolète.
2. **Increasing Complexity** : Chaque modification augmente la complexité, sauf si on investit activement pour la réduire (refactoring, architecture…).
3. **Self-Regulation** : L'évolution suit des régularités mesurables (rythme, effort, croissance). On peut l'observer, mais difficilement la forcer.
4. **Conservation of Organizational Stability** : Ajouter plus de développeurs ne rend pas forcément le projet plus rapide : le rythme global tend à rester stable
5. **Conservation of Familiarity** : Le logiciel et l'équipe ne peuvent absorber qu'une certaine quantité de changement par itération.
6. **Continuous Growth** : Pour garder sa valeur, un logiciel doit continuer à s'enrichir fonctionnellement.
7. **Declining Quality** : Sans maintenance structurée, la qualité perçue diminue naturellement avec le temps.
8. **Feedback System** : L'évolution logicielle forme un système complexe avec boucles de rétroaction : utilisateurs, organisation, architecture, marché.

En résumé : **un logiciel n'est pas une machine, c'est un écosystème**.
Et comme tout écosystème, il a besoin d'attention, d'équilibre et d'évolution continue pour survivre.

### Comment les interpréter aujourd'hui ?

Dans la pratique moderne, ces lois nous rappellent ceci :

* L'évolution est obligatoire, mais elle a un coût.
* La complexité n'est pas une anomalie : c'est de l'entropie.
* La vitesse n'est pas illimitée.
* La qualité ne se maintient que par effort continu.

Un logiciel est donc un écosystème, pas une machine. Il vit dans un environnement : dépendances, OS, matériel, utilisateurs, réglementation… L'ignorer, c'est devenir obsolète par accident.

Les lois de Lehman ne sont pas une fatalité. Elles montrent quoi contrer activement pour que le logiciel reste vivant sans devenir monstrueux. Les pratiques qui rendent l'évolution soutenable :

* Architecture modulaire et évolutive
* Refactoring continu (pas un bonus, une nécessité)
* Domain-Driven Design (clarté des modèles métier)
* Standardisation et plateformes internes
* Déploiements progressifs : feature flags, A/B, rollback
* Observabilité pour guider les décisions
* Budget dédié à la maintenance (sinon la dette augmente mécaniquement)

La maintenance n'est pas un coût : c'est le moteur de l'innovation.

En résumé, les logiciels qui durent sont ceux qui apprennent à évoluer intelligemment.  
L'évolution n'est pas le problème. Le problème, c'est d'évoluer sans architecture, sans nettoyage, sans garde-fous.

Lehman nous donne donc une loi générale, au-delà du code : **Dans le logiciel comme dans la nature, ce qui survit n'est pas ce qui ne change pas — mais ce qui sait changer**.

## D'où viennent les lois de Lehman ?

Ces principes viennent de Meir M. Lehman (1925–2010), informaticien et chercheur britannique, pionnier de l'ingénierie logicielle moderne.
Dans son article fondateur _Programs, Life Cycles, and Laws of Software Evolution_ (1974), il démontre que les logiciels complexes suivent les mêmes dynamiques que les organismes vivants : croissance, adaptation, usure et déclin.

Lehman a ensuite formalisé ces huit lois décrivant ce cycle d'évolution permanent : une base théorique toujours d'actualité à l'ère du DevOps et de la transformation numérique.
Ses travaux ont influencé la façon dont on conçoit, maintient et fait évoluer les systèmes — mais aussi, plus largement, la manière dont on pense le changement dans les organisations.

En somme, les lois de Lehman nous rappellent une vérité universelle : **dans le code comme dans la vie, ce qui dure est ce qui sait se transformer**.

### Références

* [Metrics and Laws of Software Evolution - The Nineties View](https://web.archive.org/web/20120213212731/http://www.ece.utexas.edu/~perry/work/papers/feast1.pdf){ target="_blank" }
* [M. M. Lehman, Programs, Life Cycles, and Laws of Software Evolution](https://users.ece.utexas.edu/~perry/education/SE-Intro/lehman.pdf){ target="_blank" }
* [M. M. Lehman & L. A. Belady, Program Evolution: Processes of Software Change](https://gwern.net/doc/cs/1985-lehman-programevolution.pdf){ target="_blank" }
* [Wikipedia](https://en.wikipedia.org/wiki/Lehman%27s_laws_of_software_evolution){ target="_blank" }
