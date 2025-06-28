-- Internautes
INSERT INTO Internaute (nom, email) VALUES
('Alice Dupont', 'alice@gmail.com'),
('Bob Martin', 'bob@gmail.com'),
('Claire Denis', 'claire@gmail.com');

-- Films
INSERT INTO Film (titre, annee_sortie) VALUES
('Inception', 2010),
('Amélie', 2001),
('Parasite', 2019);

-- Notations
INSERT INTO Notation (id_internaute, id_film, note, date_notation) VALUES
(1, 1, 9, '2024-01-10'),
(2, 2, 7, '2024-01-15'),
(3, 3, 10, '2024-01-20'),
(1, 2, 8, '2024-01-22');
