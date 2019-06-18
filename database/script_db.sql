DROP DATABASE IF EXISTS eleicao;
CREATE DATABASE eleicao;

USE eleicao;

DROP TABLE IF EXISTS tipo;
CREATE TABLE tipo (
	tipo_seq int(1) NOT NULL AUTO_INCREMENT,
	tipo_desc varchar(20) NOT NULL,
	PRIMARY KEY (tipo_seq)
);

DROP TABLE IF EXISTS usuario;
CREATE TABLE usuario (
	user_titulo varchar(12) NOT NULL,
	user_data_emisao date NOT NULL,
	user_zona varchar(3) DEFAULT NULL,
	user_secao varchar(4) DEFAULT NULL,
	user_nome varchar(100) NOT NULL,
	user_data_nascimento date NOT NULL,
	user_tipo_seq int(1) DEFAULT NULL,
	user_senha varchar(16) NOT NULL,
	AUT_ID varchar(255) DEFAULT NULL,
	ACTION_DATE datetime DEFAULT NULL,
	AUT_BY varchar(255) DEFAULT NULL,
	USER_ID varchar(255) DEFAULT NULL,
	permissao char(1) DEFAULT NULL,
	historico_voto char(1) DEFAULT NULL,
	user_permissao char(1) DEFAULT 'N',
	user_historico char(1) DEFAULT 'N',
	PRIMARY KEY (user_titulo),
	FOREIGN KEY (user_tipo_seq) REFERENCES tipo(tipo_seq)
) ;


DROP TABLE IF EXISTS candidato;
CREATE TABLE candidato (
	cand_num int(11) NOT NULL,
	cand_nome varchar(100) NOT NULL,
	cand_partido varchar(20) DEFAULT NULL,
	cand_votos int(11) NOT NULL,
	PRIMARY KEY (cand_num)
);

DROP TABLE IF EXISTS autoriza;
CREATE TABLE autoriza(
  auto_seq varchar(50) NOT NULL,
  auto_user_titulo varchar(10) NOT NULL,
  AUT_BY varchar(10) NOT NULL,
  ACTION_DATE date DEFAULT NULL,
  permissao enum('Y','N') DEFAULT 'N',
  historico_voto enum('Y','N') DEFAULT 'N',
  PRIMARY KEY (auto_seq),
  KEY auto_user_titulo (auto_user_titulo),
  KEY AUT_BY (AUT_BY),
  CONSTRAINT autorizacao_ibfk_1 FOREIGN KEY (auto_user_titulo) REFERENCES usuario(user_titulo),
  CONSTRAINT autorizacao_ibfk_2 FOREIGN KEY (AUT_BY) REFERENCES usuario(user_titulo)
);

DROP TABLE IF EXISTS voto;
CREATE TABLE voto
(
	voto_seq INT(5) PRIMARY KEY AUTO_INCREMENT,
	voto_user_titulo VARCHAR(10) UNIQUE NOT NULL,
	voto_cand_num int(4) NOT NULL,
	FOREIGN KEY (voto_user_titulo) REFERENCES usuario(user_titulo),
	FOREIGN KEY (voto_cand_num) REFERENCES candidato(cand_num)
);

DROP TABLE IF EXISTS estado;
CREATE TABLE estado (
  estd_uf varchar(2) NOT NULL,
  estd_nome varchar(50) NOT NULL,
  PRIMARY KEY (estd_uf)
);

DROP TABLE IF EXISTS zona;
CREATE TABLE zona (
	zona_seq int(11) NOT NULL AUTO_INCREMENT,
	zona_estd_uf varchar(50) NOT NULL,
	PRIMARY KEY (zona_seq),
	FOREIGN KEY (zona_estd_uf) REFERENCES estado(estd_uf)
) ;

DROP TABLE IF EXISTS municipio;
CREATE TABLE municipio (
	city_num int(5) NOT NULL AUTO_INCREMENT,
	city_nome varchar(50) NOT NULL,
	city_estd_uf varchar(2) NOT NULL,
	PRIMARY KEY (city_num),
	FOREIGN KEY (city_estd_uf) REFERENCES estado(estd_uf)
) ;


INSERT INTO eleicao.estado VALUES
('AC', 'Acre'),
('PR', 'Paraná'),
('RJ', 'Rio de Janeiro'),
('SP', 'São Paulo');

INSERT INTO eleicao.municipio (city_nome, city_estd_uf) VALUES
('Santa Isabel', 'SP');

INSERT INTO eleicao.zona (zona_estd_uf) VALUES
('SP');

INSERT INTO eleicao.tipo (tipo_desc) VALUES
('USUÁRIO COMUM'),
('MESÁRIO'),
('CHEFE DE SEÇÃO');

INSERT INTO eleicao.usuario (user_titulo, user_senha, user_zona, user_secao, user_tipo_seq, user_data_emisao, user_data_nascimento, user_nome) VALUES
('111', '111', 1, 1, 1, '2018-01-15', '2018-01-15', 'Mauricio de Souza'),
('222', '222', 1, 1, 2, '2018-01-15', '2018-01-15', 'JOAO PAULO'),
('333', '333', 1, 1, 3, '2018-01-15', '2018-01-15', 'Vladmir Temer');

INSERT INTO eleicao.candidato VALUES
(12, 'Ciro Gomes', 'PDT', 0),
(13, 'José Serra', 'PT', 0),
(17, 'Jair Bolsonaro', 'PSL', 0),
(19, 'Cabo Daciolo', 'PV', 0),
(0, 'BRANCO', '', 0),
(1, 'NULO', '', 0);


SET SQL_SAFE_UPDATES = 0;

-- TRIGGER PARA INSERIR VOTO PARA CADA CANDIDATO
DELIMITER $
CREATE TRIGGER contabilizaVoto 
AFTER INSERT ON voto 
FOR EACH ROW 
BEGIN
UPDATE candidato 
SET cand_votos = cand_votos + 1
WHERE cand_num = NEW.voto_cand_num;
END$
#delimiter
-- FIM DO TRIGGER

-- TRIGGER PARA INSERIR SE O USUARIO PODE OU NÃO VOTAR
DELIMITER $
CREATE TRIGGER podeVotar
AFTER INSERT ON autoriza 
FOR EACH ROW 
BEGIN
UPDATE usuario 
SET user_permissao = 'Y'
WHERE usuario.user_titulo = NEW.auto_user_titulo;
END$
#delimiter
-- FIM DO TRIGGER

-- TRIGGER PARA INSERIR SE O USUARIO JÁ VOTOU
DELIMITER $
CREATE TRIGGER jaVotou
AFTER INSERT ON voto 
FOR EACH ROW 
BEGIN
UPDATE usuario 
SET user_historico = 'Y'
WHERE usuario.user_titulo = NEW.voto_user_titulo;
END$
#delimiter
-- FIM DO TRIGGER