--Comando que cria um novo Banco de Dados no SSMS
CREATE DATABASE db_escola_M;

--COMANDO PARA INSERIR UM NOVO REGISTRO 
INSERT INTO tb_escola(nome,endereco)
VALUES('Moura Branco', 'Rua Tapajós 1085- Olimpico');

SELECT * FROM tb_escola;

--REGISTRO NA TABELA ALUNO
INSERT INTO tb_aluno(nome, cpf, data_nasc, matricula, id_escola) VALUES
('Natalia', '81599873826', '2009/01/20' ,'oQ5hC2ZrP1', 1),
('João',    '05186651869' ,'2008/07/28', 'WH1oUAOKFc', 1);

INSERT INTO tb_aluno(nome, cpf, data_nasc, matricula, id_escola) VALUES
('Luzia',   '07812989038', '2008/03/10' ,'GygEz3In8F', 1),
('Viviane', '35521089047', '2009/06/30' ,'z8COUT4cc2', 1),
('Paula', '77958395094', '2008/06/30' ,'hYITbhmgRZ', 1);

SELECT * FROM tb_aluno;

--REGISTRO NA TABELA TURMA
INSERT INTO tb_turma (numero_sala, periodo, nome_turma, id_escola) VALUES
(102,'Tarde', '1 Ano B',1 ),
(201,'Manhã', '2 Ano A',1 ),
(202,'Noite', '2 Ano B',1 );

SELECT * FROM tb_turma;

INSERT INTO tb_prova(nome_professor, materia, duracao, nota, data_prova, id_aluno) VALUES
('Eliana', 'Geografia','01:00:00',10, '2025/08/20', 4),
('Janaina', 'Biologia','02:50:00',10, '2025/04/12', 5);

SELECT * FROM tb_prova;


INSERT INTO tb_turma_prova(id_turma, id_prova) VALUES
(1,1),
(2,2);

SELECT * FROM tb_turma_prova;

--COMANDO QUE ATUALIZA O NOME DO ALUNO PELO SEU CPF
UPDATE tb_aluno
SET nome = 'isabella'
WHERE cpf = '05186651869'

--COMANDO QUE EXCLUI UM RIGISTRO
DELETE FROM tb_aluno
WHERE matricula = 'GygEz3In8F'

SELECT * FROM tb_aluno
