USE db_devconnect;


SELECT * FROM tb_usuario
SELECT * FROM tb_publicacao
SELECT * FROM tb_comentario
SELECT * FROM tb_curtida
SELECT * FROM tb_seguidor

--Exiba quantos seguidores possui um respectivo usuário
SELECT
u.nome_completo AS Usuario,
COUNT (s.id_usuario_seguidor) AS quantidade_seguidor
FROM tb_seguidor s
JOIN tb_usuario u ON s.id_usuario_seguido = u.id
GROUP BY s.id_usuario_seguido,
u.nome_completo; 


--Exiba a quantidade de curtidas de uma respectiva publicação.
SELECT
p.id,
COUNT(c.id_curtida) AS quantidade_curtidas
FROM
tb_curtida c
INNER JOIN tb_publicacao p ON c.id_publicacao = p.id
GROUP BY p.id;


