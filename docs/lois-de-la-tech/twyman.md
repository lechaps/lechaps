# Twyman

Tu as déjà repéré une courbe spectaculaire, un chiffre qui "saute aux yeux", un résultat trop beau (ou trop bizarre) pour être vrai ? Un pic soudain dans des analytics, une performance hors norme, une métrique qui explose du jour au lendemain… et ton premier réflexe est de t'enthousiasmer - avant de réaliser que c'était juste un bug, un artefact, un mauvais import ?

Bienvenue dans **la loi de Twyman**.

> Any figure that looks interesting or different is usually wrong - Tony Twyman

Autrement dit :
**Si un chiffre attire ton attention, commence par suspecter une erreur - les données spectaculaires sont souvent des illusions.**

Mais nuance importante : Twyman ne dit pas que ces chiffres sont faux.
Il dit qu'ils doivent être **vérifiés avant d'être interprétés**.
La surprise n'est pas une victoire. C'est un **signal d'enquête.**

## Pourquoi la loi de Twyman est si parlante

* Une donnée « wow » n'est pas un cadeau, c'est un **risque d'erreur à contrôler.**
* Les chiffres surprenants cachent souvent :

  * une erreur de calcul,
  * un bug de collecte,
  * un mauvais filtrage,
  * un échantillon biaisé,
  * un graphique trompeur,
  * une interprétation trop rapide.
* Les anomalies attirent l'œil, mais ce sont les éléments **à vérifier en premier.**
* Le cerveau adore "compléter" l'histoire trop vite : c'est notre biais.

En résumé : **une donnée spectaculaire peut être soit un bug… soit une opportunité. Ce n'est pas le chiffre qui décide, c'est l'enquête.**

## Exemple simple… et ses deux issues

Tu analyses les ventes d'un site e-commerce. Tout est stable, puis soudain : **+500 % en un jour**.

Incroyable ?  
Oui.  
Crédible ?  
Pas sans enquête.

### 🧯 **Le faux signal**

* problème de fuseau horaire,
* duplication d'entrées,
* tracking dégradé,
* mauvais tag campagne,
* agrégation erronée.

Dans ce cas : on corrige, on nettoie, on documente.

### 💎 **Le vrai signal**

* un influenceur a parlé du site,
* une campagne a explosé en viralité,
* une promo a touché un public inattendu,
* un élément produit a boosté la conversion.

Dans ce cas : on exploite, on scale, on investit.

**Twyman ne coupe pas l'enthousiasme. Il lui crée un filtre.**

## Comment appliquer Twyman (check-list opérationnelle)

Pour tout chiffre "trop beau pour être vrai" :

> 1. **Vérifier la source** (tracking, tagging, instrumentation).
> 2. **Rejouer le calcul** (même formule, autre outil).
> 3. **Tester les filtres** (par segment, device, canal, période).
> 4. **Comparer au baseline** (moyenne, médiane, saisonnalité).
> 5. **Chercher l'explication externe** (campagne, actu, promo).
> 6. **Chercher l'erreur avant l'histoire.**

Si le chiffre résiste à cette check-list, ce n'est plus un "bug probable".
**C'est un insight exploitable.**

## D'où vient la loi de Twyman ?

La loi porte le nom de **Tony Twyman**, spécialiste britannique de la mesure d'audience. Twyman a passé sa carrière à disséquer les fluctuations d'audience dans les médias.
Il observe systématiquement que :

> Les chiffres les plus "spectaculaires" étaient, dans la majorité des cas, des erreurs de mesure.

La phrase n'a pas été publiée comme loi scientifique formelle, mais elle est devenue **un principe méthodologique partagé**, aujourd'hui enseigné en :

* dataviz,
* data science,
* marketing,
* A/B testing,
* recherche,
* prise de décision data-driven.

Twyman n'est pas une vérité absolue. C'est une règle parmi d'autres, dans une boîte à outils de "survie intellectuelle".

* **Twyman** : si une donnée attire l'œil, vérifie-la avant de l'interpréter.
* **Goodhart** : une métrique perd sa valeur si on en fait un objectif.
* **Brandolini** : réfuter l'erreur coûte plus cher que la créer.
* **Hanlon** : l'erreur est plus probable que la malveillance.
* **Murphy** : ce qui peut mal tourner… finira par mal tourner.

Toutes rappellent que **les données ne disent pas quoi penser. Elles indiquent où chercher.**

Les chiffres ne parlent pas.
Ils chuchotent.
**Et quand ils crient, il faut vérifier s'ils mentent… ou s'ils nous préviennent.**

### Références

* [Twyman's law by Ronny Kohavi](https://www.exp-platform.com/Documents/TwymansLaw.pdf)
* [Wikipedia (EN) - Twyman's Law](https://en.wikipedia.org/wiki/Twyman%27s_law)