
USE DATABASE Garantia;

CREATE TABLE Cliente (
    cod_cliente INT PRIMARY KEY AUTO_INCREMENT,
    tipo_cliente ENUM('F', 'J') NOT NULL, 
    nome_solicitante VARCHAR(100) NOT NULL,
    email_solicitante VARCHAR(100) NOT NULL,
    rua VARCHAR(100) NOT NULL,
    endereco VARCHAR(100) NOT NULL,
    bairro VARCHAR(50) NOT NULL,
    cpf int UNIQUE,
    cnpj int UNIQUE,
    nome_fantasia VARCHAR(100),

    CONSTRAINT chk_documento CHECK (
        (tipo_cliente = 'F' AND cpf IS NOT NULL AND cnpj IS NULL) OR
        (tipo_cliente = 'J' AND cnpj IS NOT NULL AND cpf IS NULL)
    )
);
