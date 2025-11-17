
USE DATABASE Garantia;

CREATE TABLE Cliente (
    cod_cliente INT PRIMARY KEY,
    tipo_cliente ENUM('F', 'J') NOT NULL, 
    nome_solicitante VARCHAR(100) NOT NULL,
    email_solicitante VARCHAR(100) NOT NULL,
    rua VARCHAR(100)  ,
    endereco VARCHAR(100)  ,
    bairro VARCHAR(50) ,
    cpf int UNIQUE,
    cnpj int UNIQUE,
    nome_fantasia VARCHAR(100),

    CONSTRAINT chk_documento CHECK (
        (tipo_cliente = 'F' AND cpf IS NOT NULL AND cnpj IS NULL) OR
        (tipo_cliente = 'J' AND cnpj IS NOT NULL AND cpf IS NULL)
    )
);

CREATE TABLE Produto(
    numero_da_nota_fiscal int PRIMARY KEY NOT NULL,
    id_produto INT PRIMARY KEY,
    nome_do_produto VARCHAR(100) NOT NULL,
    quantidade INT NOT NULL,
    data_da_entrega DATE,
    foto_do_produto VARBINARY(MAX) --Nao existe VARBINARY(MAX) nem BLOB nem nada, tem que ser por link
);

CREATE TABLE Setor(
    id_setor int PRIMARY KEY NOT NULL,
    nome_setor VARCHAR(100) UNIQUE NOT NULL,
    responsavel  VARCHAR(100)  NOT NULL,
    email_do_responsavel VARCHAR(100)  NOT NULL
);

CREATE TABLE Atendimento (
    id_atendimento int PRIMARY KEY NOT NULL,
    numero_da_nota_fiscal int FOREIGN KEY NOT NULL,
    id_cliente int FOREIGN KEY NOT NULL,
    id_setor int FOREIGN KEY NOT NULL,
    descricao_cliente VARCHAR(100),
    email_atendimento VARCHAR(100),
    data_do_atendimento DATE,
    nome_atendente VARCHAR(100),
);

CREATE TABLE Devolucao (
    id_setor int FOREIGN KEY NOT NULL,
    id_atendimento int FOREIGN KEY NOT NULL,
    forma_do_envio VARCHAR(100),
    oberservacoes_da_devolucao VARCHAR(100),
    data_de_devolucao DATE,
    medida_adotada VARCHAR(100),
);