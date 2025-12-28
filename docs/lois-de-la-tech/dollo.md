# Dollo

Tu as déjà essayé de revenir exactement comme avant ?

Après un incident majeur.  
Après une refonte ratée.  
Après une décision que tu aurais aimé ne jamais prendre.  

Sur le papier, tout semble possible : rollback, restauration, retour à l'ancienne architecture.  
Et pourtant… quelque chose ne colle jamais vraiment.

Bienvenue face à **la loi de Dollo**.

> An organism never returns exactly to a former state, even if placed again in identical conditions… it always retains some trace of the intermediate stages through which it has passed — Louis Dollo

Autrement dit : **un système complexe ne revient jamais exactement à son état d'origine**.
Même quand on recrée des conditions similaires.
Même quand on pense annuler le changement.

L'histoire laisse des traces. Toujours.

## Ce que dit vraiment la loi de Dollo

La loi de Dollo ne dit pas que le changement est impossible à inverser.
Elle dit quelque chose de plus subtil :

> **Ce ne sont pas les états qui sont irréversibles, mais les trajectoires.**

Un système peut retrouver une fonction, un comportement, un résultat.
Mais jamais par le même chemin.
Jamais avec exactement les mêmes structures internes.

Chaque étape intermédiaire modifie le terrain :

* une contrainte ajoutée,
* une dépendance créée,
* un compromis accepté.

L'évolution est cumulative.
Et cumulative ne veut pas dire réversible.

## Pourquoi cette loi résonne autant en informatique

Les systèmes d'information évoluent rarement par choix idéal.
Ils évoluent sous pression :

* délais,
* incidents,
* budgets,
* humains.

Chaque décision est rationnelle localement.
Mais leur accumulation transforme profondément le système.

On retrouve alors :

* des couches successives,
* des contournements devenus normes,
* des “solutions temporaires” toujours en place.

Même après une refonte ou une migration complète,

* **on ne recrée pas l'ancien système**.
* **on crée un nouveau système, façonné par l'histoire de l'ancien**.

Les données gardent la mémoire des anciens modèles.
Les API gardent la mémoire des anciens usages.
Les équipes gardent la mémoire des anciens incidents.

## L'illusion du retour en arrière

Pourquoi “revenir comme avant” est presque toujours une illusion ?

Parce que pour revenir exactement en arrière, il faudrait :

* rejouer toutes les étapes intermédiaires,
* reproduire les contraintes du passé,
* prendre les mêmes décisions avec les mêmes informations imparfaites.

Autrement dit : **il faudrait désapprendre**.

Or un système qui apprend ne peut pas désapprendre sans se transformer.

Un rollback peut restaurer un état fonctionnel.
Il ne restaure jamais la trajectoire qui a mené à cet état.

## Ce que la loi de Dollo nous apprend

La loi de Dollo n'est pas pessimiste.
Elle est lucide.

Elle nous invite à :

* accepter l'irréversibilité,
* documenter l'histoire,
* concevoir des systèmes capables d'évoluer plutôt que de revenir en arrière.

Une bonne architecture n'est pas celle qui peut effacer son passé.
C'est celle qui **sait vivre avec**.

## D'où vient la loi de Dollo

La loi porte le nom de **Louis Dollo** (1857–1931), paléontologue belge.
En étudiant les fossiles, il observe que les espèces peuvent perdre des traits complexes… mais ne les retrouvent jamais à l'identique.

L'évolution ne fait pas marche arrière. Elle bifurque.

Initialement formulée pour le vivant, cette loi est aujourd'hui une **clé de lecture puissante** des systèmes complexes — biologiques, techniques ou organisationnels.

### Références

* Livre [Systemantics](https://en.wikipedia.org/wiki/Systemantics){ target="_blank" }
* [Louis Dollo - Académie Royal de Belgique](https://academieroyale.be/Academie/documents/DOLLOLouisARB_195138330.pdf){ target="_blank" }
* [Wikipédia](https://en.wikipedia.org/wiki/Dollo%27s_law_of_irreversibility){ target="_blank" }
