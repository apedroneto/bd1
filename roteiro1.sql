-- atividade 1 :
	-- automovel - quilometragem, modelo, categoria, cpf_dono, placa
	-- segurando - nome, cpf, idade, moradia
	-- perito - nome, cpf
	-- oficina - cnpj, localidade, dono_cpf
	-- seguro - seguro_id, tipo, valor
	-- reparo - local_do_reparo, valor_reparo
	-- pericia - descricao_do_carro

-- #################################################################

-- atividade 2:

CREATE TABLE automovel (
   quilometragem INTEGER,
   modelo VARCHAR(20),
   categoria VARCHAR(3),
   cpf_dono INTEGER,
   placa VARCHAR(10)
);

CREATE TABLE segurando (
   nome VARCHAR(20),
   cpf VARCHAR(15),
   idade INTEGER,
   moradia VARCHAR(20)
);

CREATE TABLE perito (
   nome VARCHAR(20),
   cpf VARCHAR(15)
);

CREATE TABLE oficina (
   cnpj INTEGER,
   localidade VARCHAR(15),
   dono_cpf INTEGER
);

CREATE TABLE seguro (
   seguro_id INTEGER,
   tipo VARCHAR(15),
   valor INTEGER
);


CREATE TABLE reparo (
	local_do_reparo VARCHAR(20),
	valor_reparo INTEGER
);

CREATE TABLE pericia (
   	descricao_do_carro INTEGER,
   	perito_cpf VARCHAR(20)
);

-- atividade 3:

ALTER TABLE automovel ALTER COLUMN placa SET NOT NULL;
ALTER TABLE automovel ADD PRIMARY KEY (placa);

ALTER TABLE segurando DROP COLUMN cpf RESTRICT;
ALTER TABLE segurando ADD COLUMN cpf integer;
ALTER TABLE segurando ADD PRIMARY KEY (cpf);


ALTER TABLE perito ADD PRIMARY KEY (cpf);

ALTER TABLE oficina ADD PRIMARY KEY (cnpj);

ALTER TABLE seguro ADD PRIMARY KEY (seguro_id);

ALTER TABLE reparo ADD COLUMN reparo_id integer;
ALTER TABLE reparo ADD PRIMARY KEY (reparo_id);
ALTER TABLE reparo ALTER COLUMN local_do_reparo SET NOT NULL;

ALTER TABLE pericia ADD COLUMN pericia_id integer;
ALTER TABLE pericia ADD PRIMARY KEY (pericia_id);


-- atividade 4:

ALTER TABLE automovel ADD CONSTRAINT fk_segurando FOREIGN KEY (cpf_dono) REFERENCES segurando (cpf);


















