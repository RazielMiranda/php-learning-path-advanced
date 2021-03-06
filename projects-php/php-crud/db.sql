

CREATE TABLE IF NOT EXISTS ALUNOS (
  ID INTEGER PRIMARY KEY AUTO_INCREMENT,
  NOME_ALUNOS TEXT NOT NULL,
  DATA_NASCIMENTO TEXT NOT NULL,
  SENHA TEXT NOT NULL
);

CREATE TABLE IF NOT EXISTS CURSOS (
  ID INTEGER PRIMARY KEY AUTO_INCREMENT,
  NOME_CURSOS  TEXT NOT NULL,
  CARGA_HORARIA VARCHAR(120) NOT NULL
);

CREATE TABLE IF NOT EXISTS ALUNOS_CURSOS (
  ID INTEGER PRIMARY KEY AUTO_INCREMENT,
  ALUNO_ID INTEGER NOT NULL,
  CURSO_ID INTEGER NOT NULL,
  FOREIGN KEY (ALUNO_ID) REFERENCES ALUNOS (ID),
  FOREIGN KEY (CURSO_ID) REFERENCES CURSOS (ID)
);

INSERT INTO ALUNOS (NOME_ALUNOS, DATA_NASCIMENTO, SENHA) VALUES ('JOÃO', '1990-01-01', '123');
INSERT INTO ALUNOS (NOME_ALUNOS, DATA_NASCIMENTO, SENHA) VALUES ('MARIA', '1990-01-01', '123');

INSERT INTO CURSOS (NOME_CURSOS, CARGA_HORARIA) VALUES ('PHP', '100');
INSERT INTO CURSOS (NOME_CURSOS, CARGA_HORARIA) VALUES ('JS', '100');

INSERT INTO ALUNOS_CURSOS (ALUNO_ID, CURSO_ID) VALUES (1, 1);
INSERT INTO ALUNOS_CURSOS (ALUNO_ID, CURSO_ID) VALUES (2, 2);