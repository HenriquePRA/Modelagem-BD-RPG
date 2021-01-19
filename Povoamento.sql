USE RPG;

INSERT INTO Recurso (idrecurso, nome, valor, tipo, slots_necessarios) VALUES 
(1, "Couro de Javali", 25, "neutro", 15),
(2, "Barra de Ferro", 15, "neutro", 10),
(3, "Barra de Cobre", 100, "neutro", 10),
(4, "Fio de Cobre", 45, "neutro", 5),
(5, "Lã de Carneiro", 30, "neutro", 5),
(6, "Pena de Corvo", 5, "neutro", 1),
(7, "Armadura de Aço", 125, "equipavel", 25),
(8, "Machado Comun", 135, "equipavel", 12),
(9, "Espada Enferrujada", 85, "equipavel", 10),
(10, "Arco Leve", 100, "equipavel", 5),
(11, "Arco Recurvo", 125, "equipavel", 8),
(12, "Poção de Cura", 5, "consumivel", 1),
(13, "Poção de Cura superior", 10, "consumivel", 1),
(14, "Poção de Vigor", 7, "consumivel", 1),
(15, "Poção de Vigor Superior", 14, "consumivel", 1);


INSERT INTO RECOMPENSA (idrecompensa, experiencia, ouro) VALUES
(1, 1000, 125),
(2, 1000, 145),
(3, 10000, 0),
(4, 5000, 100),
(5, 100000, 100),
(6, 0, 1000),
(7, 750, 500),
(8, 2500, 50), 
(9, 250, 50),
(10, 1200, 35);

INSERT INTO recompensa_recurso (recompensa, recurso) VALUES
(1, 1),
(2, 7),
(3, 8),
(4, 15),
(5, 3),
(6, 12),
(7, 13),
(8, 2),
(9, 4),
(10, 11);

INSERT INTO Missao (idmissao, nome, nivel_minimo, idrecompensa) VALUES
(1, "Pena escura do Pardal", 0, 9),
(2, "A Ponte cinzenta", 15, 7),
(3, "Calabouço do Corvo", 25, 7),
(4, "Por toda cidade", 5, 7),
(5, "Explorando o Vale", 45, 3),
(6, "Calabouço das Areias", 50, 6),
(7, "Para onde foi a setima Expedição", 65, 5),
(8, "O Alquimista e o Bosque", 70, 5),
(9, "Escuridão absoluta", 75, 4),
(10, "Um Castelo Branco", 80, 5);

INSERT INTO Jogador(idjogador, idguilda, nome, nivel, experiencia, vitalidade, forca, destreza, resiliencia, inteligencia) VALUES
(1, 1, "Joao15", 55, 500, 2000, 30, 15, 15, 25),
(2, 1, "Alixe", 10, 0, 100, 5, 5, 5, 5),
(3, 1, "Toxic", 25, 350, 250, 45, 5, 0, 0),
(4, 1, "Alarmu", 5, 1200, 75, 0, 30, 0, 0),
(5, 1, "L11", 15, 450, 170, 15, 5, 0, 0),
(6, 2, "fULPA", 70, 400, 2850, 125, 0, 0, 0),
(7, 2, "lord", 40, 0, 1350, 15, 55, 0, 0),
(8, 2, "toklia", 35, 100, 1100, 0, 0, 10, 35),
(9, 2, "carlito", 25, 1500, 230, 0, 15, 15, 5),
(10, 2, "maver1k", 0, 125, 50, 0, 0, 0, 0),
(11, 3, "aaaabe", 10, 400, 100, 0, 0, 0, 20),
(12, 3, "b13top", 15, 800, 170, 5, 10, 5, 5),
(13, 3, "fr0z3n", 17, 900, 185, 5, 15, 5, 5),
(14, 3, "nomeCp", 60, 0, 2150, 50, 50, 0, 5),
(15, 3, "xli", 55, 1500, 2000, 10, 75, 15, 0);

INSERT INTO Guilda (idguilda, guilda_superior, jogador_chefe, nome, nivel) VALUES
(1, null, 1, "KAMA", 10),
(2, null, 6, "black", 5),
(3, 1, 14,"HARPA", 2);

INSERT INTO INVENTARIO (idinventario, idjogador, slots, ouro) VALUES
(1, 1, 200, 15157), 
(2, 2, 200, 0),
(3, 3, 300, 120),
(4, 4, 200, 0),
(5, 5, 250, 0),
(6, 6, 200, 25245),
(7, 7, 300, 5752),
(8, 8, 250, 6563),
(9, 9, 200, 450),
(10, 10, 200, 0),
(11, 11, 300, 0),
(12, 12, 200, 0),
(13, 13, 250, 0),
(14, 14, 200, 10000),
(15, 15, 300, 15778),
(16, 6, 250, 0),
(17, 15, 200, 0),
(18, 14, 250, 7561);

INSERT INTO inventario_recurso (idinventario, idjogador, idrecurso) VALUES
(1, 1, 7),
(1, 1, 13),
(6, 6, 7),
(16, 6, 8),
(6, 6, 13),
(7, 7, 14),
(7, 7, 3),
(8, 8, 3),
(8, 8, 4),
(8, 8, 5),
(14, 14, 1);

INSERT INTO Profissao (idprofissao, nome) VALUES 
(1, "Ferreiro"),
(2, "Lenhador"),
(3, "Caçador"),
(4, "Alquimista"),
(5, "Coetor");

INSERT INTO Humano (idjogador, idprofissao) VALUES
(1, 1),
(1, 2),
(6, 1),
(6, 2),
(6, 3),
(6, 4),
(7, 1),
(8, 2),
(14, 4),
(14, 2);

INSERT INTO Elfo (idjogador, habilidade) VALUES
(2, "Invisibilidade"),
(3, "Percepcao"),
(4, "rolbak"),
(5, "Invisibilidade"),
(9, "Percepcao");

INSERT INTO Ork (idjogador, passiva, resistencia) VALUES
(10, "Regeneracao", "ATK-Fisico"),
(11, "Regeneracao", "ATK-Magico"),
(12, "Bersek", "ATK-Fisico"),
(13, "Regeneracao", "ATK-Fisico"),
(15, "Rage", "Veneno");

INSERT INTO Conquista (idJogador, idmissao, idrecompensa, nome) VALUES
(1, 3, 2, "Um novo começo"),
(1, 6, 3, "Calabouços e dragões"),
(6, 3, 2, "Um novo começo"),
(6, 6, 3, "Calabouços e dragões"),
(7, 3, 2, "Um novo começo"),
(7, 6, 3, "Calabouços e dragões"),
(8, 3, 2, "Um novo começo"),
(8, 6, 3, "Calabouços e dragões"),
(14, 3, 2, "Um novo começo"),
(14, 6, 3, "Calabouços e dragões"),
(9, 3, 2, "Um novo começo"),
(3, 3, 2, "Um novo começo");

INSERT INTO Alinhamento (idalinhamento, nome) VALUES 
(1, "Neutro"),
(2, "Luz"),
(3, "Trevas");

INSERT INTO Territorio (idterritorio, nome) VALUES
(1, "Cidade de Astros"),
(2, "Campo de Astros"),
(3, "Dunas"),
(4, "Deserto Obscuro"),
(5, "Palácio Branco");

INSERT INTO Habita (idterritorio, idalinhamento, idguilda, beneficio_menbros) VALUES
(1, 1, 1, "25% de xp por missão completada na área"),
(2, 1, 1, "100 de ouro adicional por missão completada na área"),
(3, 3, 2, "15% de xp por missão completada na área"),
(4, 3, 2, "10% de xp por missão completada na área"),
(5, 2, 3, "300 de ouro adicional por missão completada na área");