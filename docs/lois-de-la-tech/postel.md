# Postel

La **loi de Postel** aussi appelée **principe de robustesse**, est une règle essentielle en informatique et en communication qui explique pourquoi **il faut être flexible en réception, mais strict en émission.**  

> Sois tolérant dans ce que tu acceptes et strict dans ce que tu envoies

## En gros, ça signifie quoi ?

- **Jon Postel**, un des pionniers de l’Internet, a formulé cette règle pour garantir **une meilleure interopérabilité** entre les systèmes.  
- Elle signifie que :  
  - **Un bon système doit être robuste** en acceptant **des entrées imparfaites** ou légèrement déviantes.  
  - Mais **il doit être rigoureux** dans ce qu’il produit, pour **ne pas générer d’ambiguïtés ou d’erreurs** chez les autres.  
- Exemples d’application :  
  - **Sur le web** : un navigateur **doit afficher des pages même si le code HTML contient des erreurs**, mais un bon développeur doit **produire un HTML propre et standard.**  
  - **En communication humaine** : il faut **écouter avec souplesse**, mais **s’exprimer avec clarté et précision.**  
  - **Dans la collaboration** : être ouvert aux idées des autres, tout en étant rigoureux sur ses propres engagements.  

## Pourquoi c’est inspirant ?

Parce que ça nous rappelle que :  
✅ **L’adaptabilité améliore les interactions** – Être tolérant avec ce que l’on reçoit évite les blocages inutiles.  
✅ **La rigueur prévient le chaos** – Si tout le monde émettait des données ambiguës ou erronées, **la communication s’effondrerait**.  
✅ **L’équilibre entre souplesse et exigence est la clé** – Accepter les imperfections des autres, mais fournir du travail soigné.  

Bref, la **loi de Postel**, c’est un rappel puissant : **dans la technique comme dans la vie, mieux vaut être souple en réception et exigeant en émission pour garantir des échanges fluides et efficaces.** 🌍🔄🚀

## D’où ça vient ?

La **loi de Postel**, aussi appelée **principe de robustesse**, vient de **Jon Postel** (1943–1998), **informaticien américain** et **pionnier d’Internet**.
Postel a été l’un des architectes majeurs du réseau Internet moderne : il a participé à la création des protocoles fondamentaux comme **TCP/IP**, **SMTP** (email) et **DNS** (Domain Name System).

C’est dans un document technique majeur — la **RFC 760** (1979), puis surtout la **RFC 1122** (1989) — que Postel énonce ce principe, devenu depuis célèbre sous le nom de **loi de Postel** :

> **“Be conservative in what you send, be liberal in what you accept.”**
> *(« Soyez strict dans ce que vous émettez, mais tolérant dans ce que vous acceptez. »)*

À l’origine, ce principe visait à rendre les communications entre ordinateurs **plus robustes et interopérables** : un système devait envoyer des messages **propres, normalisés et bien formés**, mais être capable de **comprendre et traiter des messages légèrement imparfaits** venant d’autres systèmes.

Cependant, la portée de la loi de Postel dépasse largement le cadre technique. Elle est devenue une **philosophie de conception universelle** :

* En **informatique**, elle inspire la conception d’API, de protocoles et d’interfaces résilientes.
* En **communication** et en **management**, elle symbolise une règle d’équilibre : **clarté dans ce qu’on exprime, bienveillance dans ce qu’on reçoit**.

Ironiquement, Postel lui-même reconnaissait plus tard que l’interprétation trop “tolérante” de ce principe avait parfois créé des problèmes de sécurité ou d’ambiguïté — ce qui en fait un **principe à manier avec discernement**.

📚 **Sources :**

* Jon Postel, *RFC 760: DoD Standard Internet Protocol*, IETF, 1979
* Jon Postel, *RFC 1122: Requirements for Internet Hosts – Communication Layers*, IETF, 1989
* Internet Engineering Task Force (IETF), *“The Robustness Principle Reconsidered”*, RFC 7608, 2015
* The Internet Society, *“Remembering Jon Postel: The Internet’s Quiet Architect”*, 2018
