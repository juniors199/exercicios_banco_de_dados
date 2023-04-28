CREATE DATABASE exerciciomerdois;

USE exerciciomerdois;

CREATE TABLE modelo
(
	id_modelo INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(50) NOT NULL
);

CREATE TABLE aviao
(
	matricula INT PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    autonomia INT NOT NULL,
    id_modelo INT,
    FOREIGN KEY (id_modelo) REFERENCES modelo(id_modelo)
);

CREATE TABLE piloto
(
	n_licenca INT PRIMARY KEY,
    nome VARCHAR(50) NOT NULL
);

CREATE TABLE voos
(
	id_voos INT PRIMARY KEY AUTO_INCREMENT,
    data DATETIME NOT NULL,
    local_partida VARCHAR(100) NOT NULL,
    local_destino VARCHAR(100) NOT NULL,
    n_licenca INT NOT NULL,
    FOREIGN KEY (n_licenca) REFERENCES piloto(n_licenca)
);

CREATE TABLE dependente
(
	id_dependente INT PRIMARY KEY AUTO_INCREMENT,
	nome VARCHAR(50) NOT NULL,
    data_nascimento VARCHAR(10) NOT NULL,
    n_licenca INT NOT NULL,
    FOREIGN KEY (n_licenca) REFERENCES piloto(n_licenca)
);

CREATE TABLE aviao_voos
(
	matricula INT,
    id_voos INT,
    FOREIGN KEY (matricula) REFERENCES aviao(matricula),
    FOREIGN KEY (id_voos) REFERENCES voos(id_voos),
    PRIMARY KEY (matricula, id_voos)
);

CREATE TABLE piloto_modelo
(
	n_licenca INT,
    id_modelo INT,
    FOREIGN KEY (n_licenca) REFERENCES piloto(n_licenca),
    FOREIGN KEY (id_modelo) REFERENCES modelo(id_modelo),
    PRIMARY KEY (n_licenca, id_modelo)
);




