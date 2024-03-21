# Exemple minimaliste de d'analyseur syntaxique avec JFlex et Cup

Il s'agit ici de faire un analyseur syntaxique 
pour reconnaitre des séquences des phrases simples 
du type `<sujet> <verbe> <complement> <point>`.


[JFlex](https://jflex.de/) 
est utilisé pour la génération de l'analyseur lexical.

[Cup](http://www2.cs.tum.edu/projects/cup/) pour la génération de l'analyseur syntaxique.

## Analyseur lexical

La spécification de l'analyseur lexical est dans le fichier [src/main/jflex/Simple.jflex](src/main/jflex/Simple.jflex).

Il permet de reconnaître un **sujet** (_il_ ou _elle_), 
un **verbe** (_est_ ou _boit_), un **complément** 
(_vite_, _bien_, _chaud_, _beau_, _belle_) ou un **point** (_.;!?_).

À partir de cette spécification, JFlex génère le fichier java, 
`build/generated/sources/jflex/main/java/fr/usmb/m1isc/compilation/simple/SimpleLexer.java` 
qui contient l'analyseur lexical utilisé en entrée 
de l'analyseur syntaxique.

## Analyseur syntaxique

La spécification de l'analyseur syntaxique est dans le fichier [src/main/cup/Simple.cup](src/main/cup/Simple.cup).

À partir de cette spécification, GNU Bison génère les fichiers, 
`build/generated/sources/cup/main/java/fr/usmb/m1isc/compilation/simple/SimpleParser.java` (contient l'analyseur syntaxique) et 
`build/generated/sources/cup/main/java/fr/usmb/m1isc/compilation/simple/SimpleParserSym.java` 
(utilisé dans l'analyseur lexical pour renvoyer 
les tokens (unités lexicales) attendus par l'analyseur syntaxique).

## Construction du projet 

Pour construire le projet (nécessite l'installation d'une JDK), 
aller dans le dossier du projet puis exécuter 
la commande `./gradelw build` ou `gradelw.bat build`. 





 
