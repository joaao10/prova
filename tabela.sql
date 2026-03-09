CREATE TABLE Professor (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    disciplina_id INT,
    sexo VARCHAR(10),
    idade INT,
    FOREIGN KEY (disciplina_id) REFERENCES Disciplina(id)
);

CREATE TABLE Aluno (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    status_qualificacao VARCHAR(50),  -- Como 'Acima da Média', 'Abaixo da Média', etc.
    comportamento VARCHAR(50),  -- Como 'Comportado', 'Bagunceiro', etc.
    idade INT,
    professor_id INT,
    FOREIGN KEY (professor_id) REFERENCES Professor(id)
);

CREATE TABLE Disciplina (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    melhor_aluno_id INT,
    pior_aluno_id INT,
    mais_faltas_id INT,
    FOREIGN KEY (melhor_aluno_id) REFERENCES Aluno(id),
    FOREIGN KEY (pior_aluno_id) REFERENCES Aluno(id),
    FOREIGN KEY (mais_faltas_id) REFERENCES Aluno(id)