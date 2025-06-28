# Devoir CCP2 - Base de données de notation de films

## Objectif
Mettre en place une base de données pour une plateforme de notation de films, en créant un schéma physique, une base de tests, et deux utilisateurs SQL aux droits distincts.

## Fichiers inclus
- '1-schema_physique.sql' : création des tables 'Internaute', 'Film', 'Notation'.
- '2-alimentation.sql' : insertion de données fictives pour tester les relations.
- '3-utilisateurs.sql' : création des utilisateurs SQL ('admin' et 'user') avec des droits spécifiques.

# Justification des choix

## Schéma physique
Le schéma physique a été conçu à partir du modèle conceptuel fourni. Il repose sur trois tables : 
- 'Internaute' : stocke les informations des utilisateurs, identifiés par leur adresse e-mail.
- 'Film' : contient les titres, genres et années des films, identifiés par un ID auto-incrémenté.
- 'Notation' : table associative entre internautes et films. Contient une note entre 0 et 10, deux clés étrangères, et un identifiant unique.

Le schéma respecte la relation many-to-many entre internautes et films, via la table Notation.

## Types de données
- Tous les champs texte sont en 'VARCHAR'.
- Les années sont en 'INT'
- Les identifiants sont en 'INT AUTO_INCREMENT'.
- La note est un 'INT' avec une contrainte 'CHECK' pour limiter les valeurs de 0 à 10.

## Contraintes et relations
- Clés primaires pour l'unicité.
- Clés étrangères dans la table 'Notation'.
- Le tout respecte une structure relationnelle normalisée.

## Utilisateurs SQL
Deux utilisateurs créés avec des droits spécifiques : 
- 'admin' : tous les droits sur la base (lecture, écriture, suppression, gestion des utilisateurs).
- 'user' : accès en lecture seule (SELECT), sans possibilité de modifier les données.

Cette séparation permet de garantir la sécurité et l'intégrité de la base.
