CREATE TABLE peca (
    id_peca SERIAL PRIMARY KEY,
    tipo_material VARCHAR(50) NOT NULL
);

CREATE TABLE ciclo (
    id_ciclo SERIAL PRIMARY KEY,
    id_peca INT REFERENCES peca(id_peca),
    id_estacao INT REFERENCES estacao(id_estacao),
    tempo_inicial TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    timestamp_ciclo TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);


CREATE TABLE sensor (
    id_sensor SERIAL PRIMARY KEY,
    tipo_sensor VARCHAR(50),
    id_estacao INT REFERENCES estacao(id_estacao),
    descricao VARCHAR(255)
);


CREATE TABLE deteccao_sensor (
    id_deteccao SERIAL PRIMARY KEY,
    id_sensor INT REFERENCES sensor(id_sensor),
    timestamp_deteccao TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);
