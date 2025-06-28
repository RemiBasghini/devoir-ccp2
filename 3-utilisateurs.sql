-- Création de l'utilisateur administrateur
CREATE USER 'admin'@'localhost' IDENTIFIED BY 'Admin123!';
GRANT ALL PRIVILEGES ON notation_films.* TO 'admin'@'localhost' WITH GRANT OPTION;

-- Création de l'utilisateur classique
CREATE USER 'user'@'localhost' IDENTIFIED BY 'User123!';
GRANT SELECT ON notation_films.* TO 'user'@'localhost';

-- Appliquer les changements
FLUSH PRIVILEGES;
