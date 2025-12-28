# Gunther

Tu as déjà vécu ce moment où ajouter des ressources rend ton système plus lent ? Plus de nœuds, plus de pods, plus de threads… et pourtant, la latence explose, les timeouts apparaissent, et le throughput stagne — voire recule.

Bienvenue dans la loi de Gunther.

> A system's capacity is limited by contention and by the coherency delay introduced as the number of processors increases. — Neil Gunther, 1993

Autrement dit : **Même quand un système est théoriquement parallélisable, le coût de coordination finit par manger — puis inverser — les gains**.

Le message est clair : **Scaler, c'est ajouter de la complexité. Et la complexité a un coût**.

## Ce que dit vraiment la loi de Gunther

Cette loi modélise le monde réel :

* latence réseau,
* contention sur les ressources,
* synchronisation,
* cohérence des données,
* invalidation de caches,
* trafic inter-nœuds.

Sa conclusion est simple et redoutable, le scaling réel est limité par deux forces : **la contention et la cohérence**.

Plus tu ajoutes de ressources, plus ces deux forces augmentent. Et à un moment, elles gagnent.

La loi de Gunther prédit trois zones du scling :

1. **Scaling quasi linéaire** : Rare, fragile, souvent temporaire.
2. **Diminishing returns** : Chaque nouvelle ressource apporte moins que la précédente.
3. **Retrograde scaling** : Ajouter des ressources dégrade la performance globale.

C'est ce troisième cas qui surprend le plus… et qui explique tant d'architectures “sur-scalées”.

## Le schéma mental

> **Gunther → "Quel est le coût de la coordination ?"**

Pas :

* “Combien de nœuds je peux ajouter ?”

Mais :

* Combien de synchronisations supplémentaires ?
* Combien de messages réseau en plus ?
* Combien de caches à invalider ?
* Combien de points de contention nouveaux ?

### Exemple

À mesure qu'un cluster microservices s'agrandit :

* plus de latence réseau,
* plus de synchronisation,
* plus de contention,
* plus de cache invalidation,

jusqu'à un point où **ajouter des nœuds dégrade la performance**.

C'est le domaine de Gunther.

## Version organisationnelle

La loi fonctionne aussi très bien sans ordinateurs :

* Plus d'équipes → plus de coordination.
* Plus de coordination → plus de dépendances.
* Plus de dépendances → plus de réunions.
* Plus de réunions → moins de débit réel.

**Gunther relie ingénierie et management : scaler augmente toujours la complexité.**

Et contrairement à la puissance de calcul, la complexité, elle, ne scale jamais bien.

### D'où vient la loi

Neil J. Gunther, physicien et spécialiste des systèmes distribués, publie _l'Universal Scalability Law_ en 1993.

Son objectif :

* dépasser les modèles trop idéalisés d'Amdahl et de Gustafson
* pour intégrer les coûts réels de coordination, de contention et de cohérence.

Aujourd'hui, la loi de Gunther est un pilier du **capacity planning moderne** et de l'ingénierie de performance.

Elle rappelle une vérité inconfortable mais essentielle : **Scaler n'est pas une solution. C'est une décision de design**.

### Références

* [Gunther's law - wikipédia](https://en.wikipedia.org/wiki/Neil_J._Gunther#Universal_Scalability_Law){ target="_blank" }
* [A simple Capacity model of massively parallel transaction systems - Neil J. Gunther](http://www.perfdynamics.com/Papers/njgCMG93.pdf){ target="_blank" }
