use garantia;

CREATE TABLE Cliente (
    cod_cliente INT PRIMARY KEY AUTO_INCREMENT,
    tipo_cliente ENUM('F', 'J') NOT NULL, 
    nome_solicitante VARCHAR(100) NOT NULL,
    email_solicitante VARCHAR(100) NOT NULL,
    rua VARCHAR(100),
    endereco VARCHAR(100),
    bairro VARCHAR(50),
    cpf VARCHAR(14) UNIQUE,
    cnpj VARCHAR(18) UNIQUE,
    nome_fantasia VARCHAR(100),

    CONSTRAINT chk_documento CHECK (
        (tipo_cliente = 'F' AND cpf IS NOT NULL AND cnpj IS NULL) OR
        (tipo_cliente = 'J' AND cnpj IS NOT NULL AND cpf IS NULL)
    )
);

CREATE TABLE Setor(
    id_setor INT PRIMARY KEY AUTO_INCREMENT,
    nome_setor VARCHAR(100) UNIQUE NOT NULL,
    responsavel VARCHAR(100) NOT NULL,
    email_do_responsavel VARCHAR(100) NOT NULL
);

CREATE TABLE Produto (
    codigo_produto INT PRIMARY KEY,
    numero_da_nota_fiscal VARCHAR(50) NOT NULL ,
    nome_do_produto VARCHAR(100) NOT NULL,
    quantidade INT NOT NULL,
    data_da_entrega DATE,
    foto_do_produto VARCHAR(255)   -- link da imagem
);

CREATE TABLE Atendimento (
    id_atendimento INT PRIMARY KEY AUTO_INCREMENT,
    codigo_produto INT  NOT NULL,
    cod_cliente INT NOT NULL,
    id_setor INT NOT NULL,
    descricao_cliente VARCHAR(255),
    email_atendimento VARCHAR(100),
    data_do_atendimento DATE,
    nome_atendente VARCHAR(100),

    FOREIGN KEY (codigo_produto) REFERENCES Produto(codigo_produto),
    FOREIGN KEY (cod_cliente) REFERENCES Cliente(cod_cliente),
    FOREIGN KEY (id_setor) REFERENCES Setor(id_setor)
);

CREATE TABLE Envio (
    id_devolucao INT PRIMARY KEY AUTO_INCREMENT,
    id_atendimento INT NOT NULL,
    id_setor INT NOT NULL,
    forma_do_envio VARCHAR(100),
    observacoes_do_envio VARCHAR(255),
    data_do_envio DATE,
    medida_adotada VARCHAR(100),

    FOREIGN KEY (id_atendimento) REFERENCES Atendimento(id_atendimento),
    FOREIGN KEY (id_setor) REFERENCES Setor(id_setor)
);


