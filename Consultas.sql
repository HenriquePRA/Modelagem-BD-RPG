-- Selecao dos jogadores com alinhamento luz ou neutro

SELECT * FROM Jogador 
WHERE alinhamento IN ('LUZ', 'NEUTRO');

-- Seleção de todos os inventarios que não sejam os de 200 ou 300 slots

SELECT * FROM Inventario 
WHERE slots NOT IN ('200', '300');

-- Seleção do nome dos jogagores cuja força esteja entre 100 e 300

SELECT nome, forca FROM Jogador 
WHERE forca BETWEEN 100 AND 300;

-- Seleção das guildas cujo nível não esteja entre 10 e 20
SELECT * FROM Guilda 
WHERE nivel NOT BETWEEN 10 AND 20;

-- Seleção das guildas que não possuem guilda superior
SELECT * FROM Guilda 
WHERE guilda_superior IS NULL;

-- Seleção das missoes que possuem recompensa
SELECT * FROM Missao
WHERE idrecompensa IS NOT NULL;

-- Seleção das missoes cujo nome comece com C
SELECT * FROM missao
WHERE nome LIKE 'C%';

-- Seleção das missoes que não contenham a sequencia de caracteres 'um' 
-- em nenhuma posição do seu nome
SELECT * FROM missao
WHERE nome NOT LIKE '%um%';

-- Seleção dos Jogadores ordenados pelo nível
SELECT * FROM Jogador
ORDER BY nivel;

-- Contagem das missoes
SELECT count(idmissao) FROM Missao;

-- Seleção do nivel médio dos jogadores que não participam de nenhuma guilda
SELECT avg(nivel) FROM Jogador 
WHERE idguilda IS NULL;

-- Seleção do nome do jogador de maior nível
SELECT nome, max(nivel) FROM Jogador;

-- Seleção do nome da guilda de menor nível
SELECT nome, min(nivel) FROM Guilda;

-- Seleção do nível medio dos alinhamentos
SELECT alinhamento, avg(nivel) FROM Jogador
GROUP BY alinhamento;

-- Exibição da resiliencia média dos jogadores de cada alinhamentom excluindo
-- qualquer alinhamento cuja a resiliencia média dos seu jogadores seja maior que 10
SELECT alinhamento, avg(resiliencia) AS 'resiliencia media' 
FROM Jogador
GROUP BY alinhamento
HAVING avg(resiliencia) < 10;

-- Exibição das guildas e o nome de seus lideres
SELECT jo.nome, gi.nome FROM guilda gi
INNER JOIN Jogador jo ON gi.jogador_chefe = jo.idjogador;

-- Exibição dos dados da guilda ao lado dos dados dos jogadores
-- mesmo os que não possuem guilda
SELECT * FROM Jogador jo
LEFT JOIN Guilda gu ON jo.idguilda = gu.idguilda;

-- Exibição dos dados da guilda ao lado dos dados dos jogadores
-- exceto os que não possuem guilda
SELECT * FROM Jogador jo
RIGHT JOIN Guilda gu ON jo.idguilda = gu.idguilda;

-- Consulta pelos dados do jogador que possue mais vitalidade e sua guilda
SELECT * FROM Guilda g
INNER JOIN Jogador j ON j.idguilda = g.idguilda
WHERE j.vitalidade = (SELECT max(vitalidade) FROM Jogador WHERE destreza > 100);
