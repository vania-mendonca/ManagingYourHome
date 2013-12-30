-- Utilizadores
INSERT INTO utilizador VALUES ('admin', 'Admin', 'admin');
INSERT INTO utilizador VALUES ('joana', 'Joana', 'xpto');
INSERT INTO utilizador VALUES ('bia', 'Bia', 'coisas');
INSERT INTO utilizador VALUES ('manuel', 'Manuel', 'nheca');
INSERT INTO utilizador VALUES ('maria', 'Maria', 'cenaz');


-- Divisoes 
INSERT INTO divisao VALUES ('sala', 'Sala', 'sofa.png');
INSERT INTO divisao VALUES ('quarto1', 'Quarto Joana', 'cama1.png');
INSERT INTO divisao VALUES ('quarto2', 'Quarto Maria Manuel', 'cama2.png');
INSERT INTO divisao VALUES ('cozinha', 'Cozinha', 'talheres.png');
INSERT INTO divisao VALUES ('casaBanho', 'Casa de Banho', 'wc.png');

-- Equipamentos 
INSERT INTO equipamento VALUES ('q1l1', 'Candeeiro', 0, 0);
INSERT INTO equipamento VALUES ('q1e1', 'Estore 1', 0, 0);
INSERT INTO equipamento VALUES ('q1e2', 'Estore 2', 0, 0);
INSERT INTO equipamento VALUES ('q1e3', 'Estore 3', 0, 0);
INSERT INTO equipamento VALUES ('q1e4', 'Estore 4', 0, 0);
INSERT INTO equipamento VALUES ('q1e5', 'Estore 5', 0, 0);
INSERT INTO equipamento VALUES ('wl1', 'Luz', 0, 0);
INSERT INTO equipamento VALUES ('q2l1', 'Luz de Parede 1', 0, 0);
INSERT INTO equipamento VALUES ('q2l2', 'Luz de Parede 2', 0, 0);
INSERT INTO equipamento VALUES ('q2e1', 'Estore 1', 0, 0);
INSERT INTO equipamento VALUES ('q2e2', 'Estore 2', 0, 0);
INSERT INTO equipamento VALUES ('q2e3', 'Estore 3', 0, 0);
INSERT INTO equipamento VALUES ('q2e4', 'Estore 4', 0, 0);
INSERT INTO equipamento VALUES ('q2e5', 'Estore 5', 0, 0);
INSERT INTO equipamento VALUES ('sc1', 'Candeeiro', 0, 0);
INSERT INTO equipamento VALUES ('sc2', 'Candeeiro de Tecto', 0, 0);
INSERT INTO equipamento VALUES ('st1', 'Televisão', 0, 0);
INSERT INTO equipamento VALUES ('cl1', 'Candeeiro 1', 0, 0);
INSERT INTO equipamento VALUES ('cl2', 'Candeeiro 2', 0, 0);
INSERT INTO equipamento VALUES ('cl3', 'Candeeiro 3', 0, 0);
INSERT INTO equipamento VALUES ('cf1', 'Frigorífico', 0, 0);

-- Divisoes e equipamentos
INSERT INTO equipada VALUES ('quarto1', 'q1l1');
INSERT INTO equipada VALUES ('quarto1', 'q1e1');
INSERT INTO equipada VALUES ('quarto1', 'q1e2');
INSERT INTO equipada VALUES ('quarto1', 'q1e3');
INSERT INTO equipada VALUES ('quarto1', 'q1e4');
INSERT INTO equipada VALUES ('quarto1', 'q1e5');
INSERT INTO equipada VALUES ('casaBanho', 'wl1');
INSERT INTO equipada VALUES ('quarto2', 'q2l1');
INSERT INTO equipada VALUES ('quarto2', 'q2l2');
INSERT INTO equipada VALUES ('quarto2', 'q2e1');
INSERT INTO equipada VALUES ('quarto2', 'q2e2');
INSERT INTO equipada VALUES ('quarto2', 'q2e3');
INSERT INTO equipada VALUES ('quarto2', 'q2e4');
INSERT INTO equipada VALUES ('quarto2', 'q2e5');
INSERT INTO equipada VALUES ('sala', 'sc1');
INSERT INTO equipada VALUES ('sala', 'sc2');
INSERT INTO equipada VALUES ('sala', 'st1');
INSERT INTO equipada VALUES ('cozinha', 'cl1');
INSERT INTO equipada VALUES ('cozinha', 'cl2');
INSERT INTO equipada VALUES ('cozinha', 'cl3');
INSERT INTO equipada VALUES ('cozinha', 'cf1');

-- Acesso a divisoes
INSERT INTO acede VALUES ('joana', 'quarto1');
INSERT INTO acede VALUES ('joana', 'sala');
INSERT INTO acede VALUES ('joana', 'cozinha');
INSERT INTO acede VALUES ('joana', 'casaBanho');
INSERT INTO acede VALUES ('manuel', 'quarto2');
INSERT INTO acede VALUES ('manuel', 'sala');
INSERT INTO acede VALUES ('manuel', 'cozinha');
INSERT INTO acede VALUES ('manuel', 'casaBanho');
INSERT INTO acede VALUES ('maria', 'quarto2');
INSERT INTO acede VALUES ('maria', 'sala');
INSERT INTO acede VALUES ('maria', 'cozinha');
INSERT INTO acede VALUES ('maria', 'casaBanho');
INSERT INTO acede VALUES ('admin', 'quarto1');
INSERT INTO acede VALUES ('admin', 'quarto2');
INSERT INTO acede VALUES ('admin', 'sala');
INSERT INTO acede VALUES ('admin', 'cozinha');
INSERT INTO acede VALUES ('admin', 'casaBanho');

-- Utilizacao de equipamentos 
INSERT INTO utiliza VALUES ('admin', 'q1l1');
INSERT INTO utiliza VALUES ('admin', 'q1e1');
INSERT INTO utiliza VALUES ('admin', 'q1e2');
INSERT INTO utiliza VALUES ('admin', 'q1e3');
INSERT INTO utiliza VALUES ('admin', 'q1e4');
INSERT INTO utiliza VALUES ('admin', 'q1e5');
INSERT INTO utiliza VALUES ('admin', 'wl1');
INSERT INTO utiliza VALUES ('admin', 'q2l1');
INSERT INTO utiliza VALUES ('admin', 'q2l2');
INSERT INTO utiliza VALUES ('admin', 'q2e1');
INSERT INTO utiliza VALUES ('admin', 'q2e2');
INSERT INTO utiliza VALUES ('admin', 'q2e3');
INSERT INTO utiliza VALUES ('admin', 'q2e4');
INSERT INTO utiliza VALUES ('admin', 'q2e5');
INSERT INTO utiliza VALUES ('admin', 'sc1');
INSERT INTO utiliza VALUES ('admin', 'sc2');
INSERT INTO utiliza VALUES ('admin', 'st1');
INSERT INTO utiliza VALUES ('admin', 'cl1');
INSERT INTO utiliza VALUES ('admin', 'cl2');
INSERT INTO utiliza VALUES ('admin', 'cl3');
INSERT INTO utiliza VALUES ('admin', 'cf1');

INSERT INTO utiliza VALUES ('joana', 'q1l1');
INSERT INTO utiliza VALUES ('joana', 'q1e1');
INSERT INTO utiliza VALUES ('joana', 'q1e2');
INSERT INTO utiliza VALUES ('joana', 'q1e3');
INSERT INTO utiliza VALUES ('joana', 'q1e4');
INSERT INTO utiliza VALUES ('joana', 'q1e5');
INSERT INTO utiliza VALUES ('joana', 'wl1');
INSERT INTO utiliza VALUES ('joana', 'sc1');
INSERT INTO utiliza VALUES ('joana', 'cl1');
INSERT INTO utiliza VALUES ('joana', 'cl2');
INSERT INTO utiliza VALUES ('joana', 'cl3');
INSERT INTO utiliza VALUES ('joana', 'cf1');

INSERT INTO utiliza VALUES ('manuel', 'wl1');
INSERT INTO utiliza VALUES ('manuel', 'q2l1');
INSERT INTO utiliza VALUES ('manuel', 'q2l2');
INSERT INTO utiliza VALUES ('manuel', 'q2e1');
INSERT INTO utiliza VALUES ('manuel', 'q2e2');
INSERT INTO utiliza VALUES ('manuel', 'q2e3');
INSERT INTO utiliza VALUES ('manuel', 'q2e4');
INSERT INTO utiliza VALUES ('manuel', 'q2e5');
INSERT INTO utiliza VALUES ('manuel', 'sc1');
INSERT INTO utiliza VALUES ('manuel', 'sc2');
INSERT INTO utiliza VALUES ('manuel', 'st1');
INSERT INTO utiliza VALUES ('manuel', 'cl1');
INSERT INTO utiliza VALUES ('manuel', 'cl2');
INSERT INTO utiliza VALUES ('manuel', 'cl3');
INSERT INTO utiliza VALUES ('manuel', 'cf1');

INSERT INTO utiliza VALUES ('maria', 'wl1');
INSERT INTO utiliza VALUES ('maria', 'q2l1');
INSERT INTO utiliza VALUES ('maria', 'q2l2');
INSERT INTO utiliza VALUES ('maria', 'q2e1');
INSERT INTO utiliza VALUES ('maria', 'q2e2');
INSERT INTO utiliza VALUES ('maria', 'q2e3');
INSERT INTO utiliza VALUES ('maria', 'q2e4');
INSERT INTO utiliza VALUES ('maria', 'q2e5');
INSERT INTO utiliza VALUES ('maria', 'sc1');
INSERT INTO utiliza VALUES ('maria', 'sc2');
INSERT INTO utiliza VALUES ('maria', 'st1');
INSERT INTO utiliza VALUES ('maria', 'cl1');
INSERT INTO utiliza VALUES ('maria', 'cl2');
INSERT INTO utiliza VALUES ('maria', 'cl3');
INSERT INTO utiliza VALUES ('maria', 'cf1');