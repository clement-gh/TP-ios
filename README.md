# TP-ios

# Introduction

L'objectif des séances de TP est de développer une application IOS complète de type Gestionnaire de tâches. Le développement de cette application est faite en respectant le modèle MVC et se décomposera en plusieurs phases, 
chacune d'elles permettant d'ajouter de nouvelles fonctionnalités.

# Deroulement du projet
L'application est construite sur le principe d'un TableView vu en TD et sera constituée de plusieurs vues :

 - La première vue affichera la liste des taches.
 - Une deuxième vue permettra d'afficher le détail de la tâche
 - Une troisième vue permettra de créer une nouvelle tâche
 
 
Dans un second temps il fallait mettre en place différents moyens d'intéraction:

 - Un bouton permettra d'ajouter une nouvelle tâche dans la 3ème vue mentionnée ci-dessus.
 - Une case à cocher ou un bouton permettront de modifier le statut de la tâche j'ai utilisé un bouton de type swich qui passe ne vert lorque l'on clique dessus afin de signifier que la tache est effectuée
 - Un bouton permettra de supprimer une tâche

J'ai mis en place les différentes vue et boutons. J'ai ensuite aajouté l'attribut dueDate à mes taches et les fonctions necessaires pour créer et afficher la date de rendu de la tache.

Enfin j'ai fini par implémenter des categories avec un nouveau tableView les listant. En clicant sur une categorie on accède aux taches de chaque catégorie.
A noté que j'ai rempli par défaut toute les catégories avec une liste de taches par défaut afin de voir à quoi cela ressemble mais il suffit de supprimer la boucle for de la fonction viewDidLoad du viewController pour les enlever.


# Problèmes rencontrés
La première difficulté rencontrée est le focntionement d'XCODE et de des fonctionnalités.
J'ai également eu du mal à comprendre la mmanière d'envoyé et récuperer des informations entre les différentes vues.
J'ai aussi pris du temps pour faire en sorte d'ajouter et supprimer une tache.
Après les TP il m'a été compliqué de continuer d'avancer sur le projet n'ayant pas accès à un Mac chez moi.
C'est pour cela que je n'ai pas pu réglé le problème suivant:
Lorsque l'on supprime une tache et que l'on sort puis re rentre dans une catégorie celle-ci n'est pas supprimé.
L'actualisation des taches se fait bien lors de la création d'une nouvelle tache mais pas pour les suppression.
