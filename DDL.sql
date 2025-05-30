CREATE TABLE Peca (
    id INT PRIMARY KEY,
    tipo VARCHAR(255)
);

CREATE TABLE Separacao (
    id INT PRIMARY KEY,
    id_peca INT,
    FOREIGN KEY (id_peca) REFERENCES Peca(id),
    horario_inicial TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    horario_fim TIMESTAMP
);
