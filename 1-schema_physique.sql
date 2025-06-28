CREATE TABLE Internaute (
  id_internaute INT AUTO_INCREMENT PRIMARY KEY,
  nom VARCHAR(100),
  email VARCHAR(100) NOT NULL UNIQUE
  );

CREATE TABLE Film (
  id_film INT AUTO_INCREMENT PRIMARY KEY,
  titre VARCHAR(100),
  annee_sortie INT
  );

CREATE TABLE Notation (
  id_notation INT AUTO_INCREMENT PRIMARY KEY,
  id_internaute INT,
  id_film INT,
  note INT CHECK (note >= 0 AND note <=10),
  date_notation DATE,
  FOREIGN KEY (id_internaute) REFERENCES Internaute(id_internaute),
  FOREIGN KEY (id_film) REFERENCES Film(id_film)
  );
