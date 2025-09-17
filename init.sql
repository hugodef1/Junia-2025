-- Crée l'utilisateur 'app' avec le mot de passe du fichier .env
CREATE USER 'app'@'%' IDENTIFIED BY 'C7zqUqB7fKnbzz';

-- Accorde les permissions complètes à l'utilisateur 'app' sur toutes les bases de données
GRANT ALL PRIVILEGES ON *.* TO 'app'@'%' WITH GRANT OPTION;

-- Crée la base de données 'junia'
CREATE DATABASE IF NOT EXISTS `junia`;

-- Utilise la base de données 'junia'
USE `junia`;

-- Crée une table (exemple)
CREATE TABLE IF NOT EXISTS `users` (
  `id` INT AUTO_INCREMENT PRIMARY KEY,
  `username` VARCHAR(50) NOT NULL
);

-- Insère des données initiales (exemple)
INSERT INTO users (username) VALUES ('test_user');

-- Met à jour les privilèges
FLUSH PRIVILEGES;