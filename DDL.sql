CREATE TABLE Peca (
    id INT AUTO_INCREMENT PRIMARY KEY, 
    tipo VARCHAR(255)
);

CREATE TABLE Separacao (
    id INT PRIMARY KEY,
    id_peca INT,
    FOREIGN KEY (id_peca) REFERENCES Peca(id),
    horario TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE Dispositivo (
    id INT AUTO_INCREMENT PRIMARY KEY, 
    nome VARCHAR(255),
    estado BOOLEAN
);
