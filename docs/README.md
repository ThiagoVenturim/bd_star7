
# **Sistema de Garantia Star 7**

 --- 
 
**Integrantes:** 
* Caio Cesar de Oliveira;
* Enzo Alves Barcelos Gripp;
* Lucca Favilla Campos De Paula;
* Gabriel Fernandes Souza;
* Pedro Dias Soares;
* Thiago Domingos Venturim Ribeiro dos Santos.

**Professores:**
* Prof. Marco Paulo Gomes
  
---

*Ciência de Dados e Inteligência Artificial*
*Instituto de Informática e Ciências Exatas – Pontifícia Universidade de Minas Gerais (PUC MINAS)*
*Belo Horizonte – Minas Gerais - 2025*

---

**Resumo:**

----

### SÚMARIO 

1 [INTRODUÇÃO](#Introducao)

2 [À EMPRESA STAR 7](#Empresa)

3 [ESPECIFICAÇÃO DO MINIMUNDO](#Mundo)

4 [MODELO CONCEITUAL](#Conceitual)

5 [MODELO LÓGICO](#Logico)


 
---
 
<div id='Introducao'/>  
 
## 1- INTRODUÇÃO  

A crescente complexidade dos processos empresariais e o aumento da demanda por eficiência na gestão de informações têm impulsionado o uso de sistemas de banco de dados como ferramentas essenciais para o controle e a tomada de decisões. No contexto corporativo moderno, especialmente em empresas que lidam com múltiplos produtos, clientes e setores internos, torna-se fundamental dispor de um sistema capaz de registrar, organizar e relacionar dados de maneira estruturada, garantindo integridade, rastreabilidade e confiabilidade das informações. 

A empresa Star 7, multinacional que atua no desenvolvimento e gestão de conteúdo técnico, editorial e logístico, enfrenta desafios relacionados ao gerenciamento de seus processos de garantia de produtos. O controle manual de atendimentos, devoluções e encaminhamentos entre setores pode gerar inconsistências, atrasos e perda de informações importantes. Diante desse cenário, surge a necessidade de um sistema que centralize e automatize o registro das solicitações de garantia, proporcionando maior controle operacional e suporte à análise de desempenho. 

O presente projeto tem como objetivo o desenvolvimento de um modelo de banco de dados para o Sistema de Garantia Star 7, voltado à organização e gerenciamento de informações referentes a clientes, produtos, atendimentos, setores e devoluções. A proposta visa não apenas estruturar o armazenamento de dados, mas também representar de forma fiel as regras de negócio e os fluxos internos do processo de garantia da empresa. 

Por meio da elaboração do modelo conceitual e do modelo lógico, busca-se criar uma base sólida para a futura implementação do sistema em um ambiente computacional. A modelagem permitirá compreender as relações entre as diferentes entidades envolvidas e assegurar a consistência das informações ao longo de todo o ciclo de vida de um atendimento — desde a abertura do chamado até a devolução do produto ao cliente. 

Dessa forma, o Sistema de Garantia Star 7 constitui uma solução de apoio à gestão interna da empresa, contribuindo para a padronização de processos, a melhoria da comunicação entre setores e o aumento da satisfação dos clientes, alinhando-se à missão da Star 7 de oferecer excelência, inovação e qualidade em seus serviços. 

---

<div id='Empresa'/>  
 
## 2-  À EMPRESA STAR 7 

A Star7 é uma empresa multinacional que atua no desenvolvimento, gestão, produção e logística de conteúdo em diferentes idiomas, oferecendo soluções completas para empresas de diversos setores. Sua missão é transformar produtos em histórias de sucesso em todo o mundo, unindo talento e tecnologia para ajudar clientes a maximizar seu potencial. 

Presente em três continentes e com mais de 1.250 colaboradores distribuídos em várias sedes globais (incluindo Brasil, Itália, Espanha, Alemanha, França e EUA), a Star7 oferece uma ampla gama de serviços, que vão desde engenharia de serviços, modelagem 3D, publicações técnicas, traduções, consultoria e comunicação, até impressão digital e offset, montagem de kits, logística Just in Time e gestão de terminologia. 

No Brasil, a empresa conta com unidades em Belo Horizonte, Betim, São Paulo e Porto Real (RJ), oferecendo suporte direto às necessidades de clientes locais e internacionais. A filosofia de trabalho Integrale7 garante uma abordagem global e integrada, cobrindo todas as etapas do projeto, desde a concepção até a entrega final. 

Reconhecida pela qualidade e inovação, a Star7 é certificada com ISO 9001:2015 e FSC® (Cadeia de Custódia), reforçando seu compromisso com a excelência e a sustentabilidade. 

---


<div id='Mundo'/>  
 
## 3- ESPECIFICAÇÃO DO MINIMUNDO 
O minimundo é uma descrição textual simplificada da realidade de um domínio específico que se deseja modelar em um banco de dados. Ele serve para identificar os elementos mais relevantes do sistema (entidades, atributos e relacionamentos) e estabelecer como essas informações se conectam entre si. 

Na prática, o minimundo atua como uma ponte entre o problema real e o modelo conceitual (por exemplo, o Diagrama Entidade-Relacionamento – DER), garantindo que somente os aspectos essenciais do negócio sejam representados no banco de dados. Assim, evita-se excesso de informações irrelevantes e garante-se que a modelagem atenda às necessidades do sistema a ser desenvolvido. 

A empresa Star 7 atua no desenvolvimento de manuais, kits de bordo, livros e outros materiais gráficos. O presente projeto modela o sistema de Garantia, responsável pelo tratamento de chamados de clientes referentes a problemas nos produtos entregues. 

O cliente é identificado por id do cliente, possuem também nome e e-mail do representante que entrou em contato e endereço do cliente, os Clientes podem ser físicos identificados por CPF ou jurídicos por CNPJ e nome fantasia. O cliente entra em contato com o setor de atendimento, informando-os dados do produto: id do produto, o código da nota fiscal do produto, uma foto do defeito, a data do que foi realizada o pedido, a quantidade o nome. 

O atendimento é identificado por id do atendimento, deve anotar a data que foram realizados o próprio atendimento, o nome e o e-mail do funcionário que realizou e uma descrição textual do problema, e após encaminhar para o setor. 

Os setores possuem nome e apenas um responsável por cada setor com registro do Email, o setor recebe o produto e o responsável deve analisar o problema e tomar as medidas necessárias.  Os setores envolvidos podem ser:  Kit de Bordo, Publicação Editorial, Publicação Técnica e Marketing. 

Cada chamado só pode estar associado a um setor por vez, ou seja, não é permitido que o mesmo problema seja registrado em dois setores simultaneamente. O responsável pelo setor deve solucionar o problema e encaminhar o produto para devolução.  

A devolução tem que ter uma data que foi solucionado, a forma de envio a medida adotada e as observações sobre a devolução e pôr fim a devolução encaminha para o cliente se o cliente for jurídico deve ser gerado uma nova nota fiscal de devolução referenciando a antiga. O mesmo produto pode voltar N vezes para a garantia 

 

 
<div id='Conceitual '/>  
 
## 4- MODELO CONCEITUAL 

O modelo conceitual, é uma representação de alto nível e abstrata de um sistema, focada em descrever a estrutura, as entidades, seus atributos e os relacionamentos entre elas, com base em conceitos e regras de negócio. Ele ignora detalhes técnicos e de implementação, sendo usado para comunicação entre equipes de negócio e tecnologia, servindo como base para modelos mais detalhados, como os lógicos e físicos. 

Essa seção apresenta o modelo conceitual. Figura 1 apresenta o diagrama entidade-relacionamento (ER). 

 

 

Figura 1- Modelo Conceitual 
<img width="1216" height="1061" alt="image" src="https://github.com/user-attachments/assets/3b85c32a-3378-47e0-9b31-b7c4c34965eb" />

O modelo conceitual desenvolvido para o sistema de garantia da empresa Star 7 tem como objetivo representar, de forma clara e estruturada, todo o processo de atendimento e controle de garantia de produtos, abrangendo desde o registro da solicitação até a eventual devolução do item. A modelagem foi construída com base nas regras de negócio e requisitos funcionais identificados, visando garantir rastreabilidade, integridade e eficiência no gerenciamento das informações. 

A entidade Cliente armazena os dados de identificação e contato dos solicitantes, composta pelos atributos id_cliente, nome_do_solicitante, email_do_solicitante e endereco. Essa entidade possui uma especialização disjunta e total em Físico e Jurídico, de forma que todo cliente deve pertencer obrigatoriamente a um desses tipos. Clientes físicos são identificados pelo atributo CPF, enquanto clientes jurídicos possuem CNPJ e Nome Fantasia. Essa especialização possibilita diferenciar os tipos de clientes e aplicar regras específicas, como a emissão de notas fiscais de devolução apenas para clientes jurídicos. 

A entidade Produto representa os itens adquiridos pelos clientes, contendo os atributos id_produto, nome_do_produto, foto_do_produto, data_do_pedido, quantidade e numero_da_nota_fiscal. Cada produto pode estar associado a diversos atendimentos ao longo do tempo, o que permite rastrear o histórico de ocorrências, análises e devoluções relacionadas a ele. 

A entidade Atendimento é o núcleo central do sistema, responsável por registrar todas as ocorrências de garantia. Ela contém os atributos id_atendimento, data_de_atendimento, descricao_do_problema, nome_atendente e email_atendente. 
Cada atendimento está vinculado a um único cliente e um único produto, mas pode gerar diversas devoluções e ser encaminhado para diferentes setores ao longo do processo. Assim, o relacionamento entre Cliente e Atendimento é de 1:N, e o relacionamento entre Produto e Atendimento é de 1:N, reforçando a rastreabilidade entre o produto, o cliente e as solicitações de garantia. 

A entidade Setor representa as áreas internas da empresa responsáveis pela análise técnica e pela definição das medidas a serem tomadas em cada atendimento. Ela é composta pelos atributos nome_do_setor, responsavel_do_setor e email_responsavel. 
 O relacionamento Encaminha conecta Atendimento e Setor, sendo do tipo N:1, já que diversos atendimentos podem ser encaminhados a um mesmo setor, mas cada atendimento é tratado por apenas um setor por vez. 

A entidade Devolução registra o retorno de produtos ao cliente ou ao fabricante após análise do atendimento. Ela é composta pelos atributos data_de_devolucao, forma_de_envio, medida_adotada e observacoes_da_devolucao. O relacionamento entre Atendimento e Devolução é de 1:N, pois um atendimento pode gerar várias devoluções, especialmente em casos de trocas ou reparos múltiplos. 

O modelo conceitual integra de maneira coesa as entidades Cliente, Produto, Atendimento, Setor e Devolução, garantindo uma visão completa e rastreável do processo de garantia desde o primeiro contato com o cliente até a conclusão do caso. 
 Essa estrutura permite acompanhar o ciclo de vida de cada produto, os encaminhamentos internos realizados, as decisões tomadas por cada setor e o histórico de devoluções associadas, proporcionando transparência, controle e eficiência operacional. 

O Atendimento foi corretamente modelado como uma entidade de processo (ou evento), uma vez que representa um registro autônomo de ocorrência que possui atributos próprios e conecta diversas entidades do sistema. Caso fosse tratado apenas como um relacionamento entre Cliente e Produto, informações relevantes como data, atendente, setor e devoluções não teriam local adequado para armazenamento, comprometendo a rastreabilidade e a análise histórica. 

Portanto, o modelo conceitual proposto garante: 

* A obrigatoriedade de que todo cliente seja Físico ou Jurídico; 

* A possibilidade de um produto gerar múltiplos atendimentos; 

* A existência de um único setor responsável por cada atendimento; 

* A possibilidade de múltiplas devoluções vinculadas a um mesmo atendimento; 

E a integridade referencial entre todas as entidades envolvidas. 

Em síntese, o modelo conceitual do Sistema de Garantia Star 7 estabelece uma base sólida para o futuro modelo lógico e físico do banco de dados, assegurando organização, consistência e suporte à tomada de decisão em todas as etapas do processo de atendimento e devolução de produtos. 

<div id='Logico'/>  
 
## 5- MODELO LÓGICO 

O modelo lógico corresponde à tradução do modelo conceitual para uma estrutura compatível com os sistemas de gerenciamento de banco de dados relacionais (SGBD). Nessa etapa, preservam-se as entidades, atributos e relacionamentos identificados anteriormente, os quais passam a ser representados em formato tabular, com a definição de chaves primárias (PK), chaves estrangeiras (FK) e restrições de integridade. O objetivo dessa representação é garantir a coerência dos dados e a implementação eficiente do modelo dentro de um sistema relacional.

No modelo lógico do Sistema de Garantia da Star 7, as entidades Cliente, Produto, Atendimento, Setor e Devolução foram convertidas em tabelas relacionais, mantendo as cardinalidades e dependências funcionais definidas na etapa conceitual. Essa estrutura visa assegurar a integridade dos dados e a rastreabilidade dos processos de atendimento e devolução de produtos.


Figura 2- Modelo Lógico
<img width="1669" height="1010" alt="image" src="https://github.com/user-attachments/assets/8d2a99bf-bb31-4245-9d44-c4c832b0af17" />


A seguir, apresenta-se uma descrição detalhada das principais tabelas e seus relacionamentos:

A tabela Cliente é responsável por armazenar os dados cadastrais dos solicitantes, sejam eles pessoas físicas ou jurídicas. O atributo tipo_cliente, definido como ENUM('F', 'J'), indica o tipo de cliente e, juntamente com a restrição CHECK, garante que apenas um dos documentos (CPF ou CNPJ) seja informado de acordo com o tipo correspondente. Além dos documentos, são registrados dados de identificação e endereço, como nome, e-mail, rua e bairro.

A tabela Produto registra as informações relativas aos itens comercializados, sendo identificados unicamente pelo atributo numero_da_nota_fiscal. Nela constam ainda o nome do produto, a quantidade, a data de entrega e, opcionalmente, a foto do item. O número da nota fiscal atua como chave de ligação com a tabela Atendimento, possibilitando o rastreamento de garantias vinculadas a cada produto.

A tabela Atendimento constitui o núcleo do sistema de garantia, registrando as solicitações realizadas pelos clientes. Cada atendimento está associado a um cliente (id_cliente), a um setor responsável (id_setor) e a um produto (numero_da_nota_fiscal). São armazenadas informações relevantes, como a descrição do defeito, a data do atendimento, o nome e o e-mail do atendente responsável.

A tabela Setor representa as áreas internas encarregadas de gerenciar os atendimentos. Contém atributos como o nome do setor, o responsável e o e-mail de contato. O campo nome_do_setor possui uma restrição de unicidade (UK), garantindo que não haja duplicidade de registros entre setores.

A tabela Devolucao é destinada ao registro dos processos de retorno de produtos. Cada devolução está vinculada a um atendimento (id_atendimento) e a um setor (id_setor). São armazenados dados referentes à forma de envio, data da devolução, observações pertinentes e medidas adotadas, assegurando o controle completo das ocorrências de devolução no sistema.

Os principais relacionamentos estabelecidos no modelo lógico são:

* Um cliente pode registrar diversos atendimentos, porém cada atendimento está vinculado a apenas um cliente;

*Um produto pode estar relacionado a vários atendimentos, permitindo o acompanhamento do histórico de garantias;

*Cada atendimento é tratado por um único setor, embora um setor possa gerenciar múltiplos atendimentos;

* Um atendimento pode gerar diversas devoluções, possibilitando o controle de múltiplos processos de retorno.

Dessa forma, o modelo lógico assegura a integridade referencial entre todas as tabelas por meio do uso adequado de chaves primárias, estrangeiras e restrições de unicidade. Essa estrutura garante consistência, coerência e confiabilidade aos dados, fornecendo suporte às operações do sistema de garantia desenvolvido para a empresa Star 7.

## 6 MODELO FISICO 

O Modelo Físico é o estágio final da modelagem de banco de dados, sendo a representação completa e detalhada da estrutura de dados, pronta para ser implementada em um Sistema Gerenciador de Banco de Dados (SGBD) específico, como o MySQL, que foi o escolhido no seu projeto. 

O que ele define: Tabelas, colunas, tipos de dados específicos do SGBD (por exemplo, VARCHAR(100), INT, DATE), chaves primárias (PRIMARY KEY), chaves estrangeiras (FOREIGN KEY), índices e restrições de integridade (como NOT NULL, UNIQUE e cláusulas CHECK). 

 

* DDL (Linguagem de Definição de Dados) é um subconjunto do SQL (Structured Query Language) usado para definir e modificar a estrutura de objetos do banco de dados. 

* Propósito: Criar, alterar e remover a arquitetura do banco de dados (tabelas, esquemas, índices, usuários, etc.). A DDL lida com a estrutura, não com os dados em si. 

*Comandos Principais:* 

* CREATE: Cria um novo objeto (e.g., CREATE TABLE, CREATE INDEX). 

* ALTER: Modifica a estrutura de um objeto existente (e.g., ALTER TABLE ADD COLUMN). 

* DROP: Exclui um objeto do banco de dados (e.g., DROP TABLE Cliente). 

 

'CREATE DATABASE garantia; USE garantia; 

CREATE TABLE Cliente ( cod_cliente INT PRIMARY KEY AUTO_INCREMENT, tipo_cliente ENUM('F', 'J') NOT NULL, nome_solicitante VARCHAR(100) NOT NULL, email_solicitante VARCHAR(100) NOT NULL, rua VARCHAR(100), endereco VARCHAR(100), bairro VARCHAR(50), cpf VARCHAR(14) UNIQUE, cnpj VARCHAR(18) UNIQUE, nome_fantasia VARCHAR(100), CONSTRAINT chk_documento CHECK ( (tipo_cliente = 'F' AND cpf IS NOT NULL AND cnpj IS NULL) OR (tipo_cliente = 'J' AND cnpj IS NOT NULL AND cpf IS NULL) ) ); 

CREATE TABLE Setor( id_setor INT PRIMARY KEY AUTO_INCREMENT, nome_setor VARCHAR(100) UNIQUE NOT NULL, responsavel VARCHAR(100) NOT NULL, email_do_responsavel VARCHAR(100) NOT NULL ); 

CREATE TABLE Produto ( codigo_produto INT PRIMARY KEY, numero_da_nota_fiscal VARCHAR(50) NOT NULL, nome_do_produto VARCHAR(100) NOT NULL, quantidade INT NOT NULL, data_da_entrega DATE, foto_do_produto VARCHAR(255) -- link da imagem ); 

CREATE TABLE Atendimento ( id_atendimento INT PRIMARY KEY AUTO_INCREMENT, codigo_produto INT NOT NULL, cod_cliente INT NOT NULL, id_setor INT NOT NULL, descricao_cliente VARCHAR(255), email_atendimento VARCHAR(100), data_do_atendimento DATE, nome_atendente VARCHAR(100), FOREIGN KEY (codigo_produto) REFERENCES Produto(codigo_produto), FOREIGN KEY (cod_cliente) REFERENCES Cliente(cod_cliente), FOREIGN KEY (id_setor) REFERENCES Setor(id_setor) ); 

CREATE TABLE Envio ( id_devolucao INT PRIMARY KEY AUTO_INCREMENT, id_atendimento INT NOT NULL, id_setor INT NOT NULL, forma_do_envio VARCHAR(100), observacoes_do_envio VARCHAR(255), data_do_envio DATE, medida_adotada VARCHAR(100), FOREIGN KEY (id_atendimento) REFERENCES Atendimento(id_atendimento), FOREIGN KEY (id_setor) REFERENCES Setor(id_setor) );' 

 

 

INSERT (DML - Data Manipulation Language) 

INSERT é um comando fundamental do SQL que faz parte da DML (Linguagem de Manipulação de Dados). Ele é usado para adicionar novas linhas (registros) a uma tabela em um banco de dados. 

Propósito: Incluir os dados reais que o sistema irá manipular, preenchendo as tabelas criadas pela DDL 

INSERT INTO Setor (nome_setor, responsavel, email_do_responsavel) VALUES ('T.I.', 'Carlos Souza', 'suporte.ti@garantia.com'), ('Impressão', 'Roberto Dias', 'producao.impressao@garantia.com'), ('Mídias', 'Fernanda Alves', 'midias.digitais@garantia.com'), ('Controle de Qualidade', 'Mariana Lima', 'qualidade@garantia.com'); 

INSERT INTO Cliente (tipo_cliente, nome_solicitante, email_solicitante, rua, endereco, bairro, cpf, cnpj, nome_fantasia) VALUES ('F', 'João da Silva', 'joao.silva@email.com', 'Rua das Flores', '123', 'Centro', '123.456.789-00', NULL, NULL), ('F', 'Maria Oliveira', 'maria.oli@email.com', 'Av. Paulista', '1000, Apt 40', 'Bela Vista', '234.567.890-11', NULL, NULL), ('J', 'Tech Solutions Ltda', 'contato@techsol.com', 'Rua Inovação', '500', 'Tecnopolo', NULL, '12.345.678/0001-90', 'Tech Soluções'), ('F', 'Pedro Santos', 'pedro.santos@email.com', 'Rua do Lago', '45', 'Jardim', '345.678.901-22', NULL, NULL), ('J', 'Comércio Global SA', 'sac@comercioglobal.com', 'Av. Brasil', '2020', 'Industrial', NULL, '98.765.432/0001-10', 'Global Shop'), ('F', 'Ana Costa', 'ana.costa@email.com', 'Rua A', '12', 'Vila Nova', '456.789.012-33', NULL, NULL), ('J', 'InforPeças ME', 'gerencia@inforpecas.com', 'Rua dos Hardwares', '88', 'Centro', NULL, '11.222.333/0001-44', 'InforPeças'), ('F', 'Lucas Pereira', 'lucas.p@email.com', 'Travessa B', '9', 'São José', '567.890.123-44', NULL, NULL), ('J', 'Escritório Silva', 'adm@silvaadv.com', 'Rua da Lei', '101', 'Jurídico', NULL, '55.666.777/0001-88', 'Silva Advogados'), ('F', 'Beatriz Rocha', 'bia.rocha@email.com', 'Alameda Santos', '300', 'Jardins', '678.901.234-55', NULL, NULL), ('F','Bruna Almeida','bruna.almeida@gmail.com','Rua das Acácias','102','Centro','421.589.630-12',NULL,NULL), ('F','Thiago Monteiro','t.monteiro@gmail.com','Avenida Brasil','455','Jardim Europa','852.147.963-27',NULL,NULL), ('F','Larissa Couto','larissa.couto@gmail.com','Rua das Flores','88','Santa Luzia','369.741.258-40',NULL,NULL), ('F','Renato Barros','renato.barros@gmail.com','Avenida Paulista','900','Nova Esperança','214.785.963-11',NULL,NULL), ('F','Camila Torres','camila.torres@gmail.com','Rua do Sol','122','Vila Mariana','741.369.258-66',NULL,NULL), ('J','Mercado Bom Preço','contato@bompreco.com','Avenida Central','501','Comercial',NULL,'13.456.789/0001-55','Bom Preço'), ('J','MídiaMax Publicidade','suporte@midiamax.com','Rua Ouro Preto','233','Industrial',NULL,'22.345.678/0001-12','MídiaMax'), ('J','Auto Peças Silva','vendas@autossilva.com','Avenida Amazonas','677','Automotores',NULL,'77.888.999/0001-90','Peças Silva'), ('J','Casa Verde Hortifruti','contato@casaverde.com','Rua Ipê Amarelo','144','Verdejante',NULL,'11.222.333/0001-08','Casa Verde'), ('J','ConstruForte Materiais','atendimento@construforte.com','Avenida Tiradentes','311','Obras',NULL,'99.555.444/0001-77','ConstruForte'); 

INSERT INTO Produto (codigo_produto, numero_da_nota_fiscal, nome_do_produto, quantidade, data_da_entrega, foto_do_produto) VALUES (603534050, 'NF-0001', 'Livro Bernoulli - Vol 1', 1, '2023-10-01', ''), (603534051, 'NF-0002', 'Manual Fiat - FIAT ARGO', 1, '2023-10-05', ''), (603534052, 'NF-0003', 'Manual Fiat - FIAT CRONOS', 5, '2023-10-10', ''), (603534053, 'NF-0004', 'Manual Fiat - FIAT DUCATO', 1, '2023-10-12', ''), (603534054, 'NF-0005', 'Manual Fiat - FIAT FASTBACK', 2, '2023-10-15', ''), (603534055, 'NF-0006', 'Manual Fiat - FIAT FIORINO', 1, '2023-10-20', ''), (603534056, 'NF-0007', 'Manual Fiat - FIAT MOBI', 1, '2023-10-22', ''), (603534057, 'NF-0008', 'Manual Fiat - FIAT PULSE', 1, '2023-10-25', ''), (603534058, 'NF-0009', 'Manual Fiat - FIAT SCUDO', 10, '2023-10-28', ''), (603534059, 'NF-0010', 'Manual Fiat - FIAT Toro', 1, '2023-10-30', ''), (603534060, 'NF-0011', 'Manual Fiat - FIAT STRADA', 1, '2023-11-01', ''), (603534061, 'NF-0012', 'Manual Jeep - RENEGADE', 1, '2023-11-02', ''), (603534062, 'NF-0013', 'Apostila Matemática - 2º Ano', 1, '2023-11-05', ''), (603534063, 'NF-0014', 'Apostila Português - 2º Ano', 1, '2023-11-06', ''), (603534064, 'NF-0015', 'Manual Fiat - FIAT 500e', 1, '2023-11-08', ''), (603534065, 'NF-0016', 'Manual Citroën - C3', 1, '2023-11-10', ''), (603534066, 'NF-0017', 'Manual Citroën - C4 Cactus', 2, '2023-11-12', ''), (603534067, 'NF-0018', 'Livro História do Brasil', 1, '2023-11-15', ''), (603534068, 'NF-0019', 'Manual Peugeot - 208', 1, '2023-11-18', ''), (603534069, 'NF-0020', 'Manual Peugeot - 3008', 1, '2023-11-20', ''); 

* INSERT INTO Atendimento (codigo_produto, cod_cliente, id_setor, descricao_cliente, email_atendimento, data_do_atendimento, nome_atendente) VALUES (603534050, 1, 4, 'Capa veio rasgada na ponta', 'qualidade@garantia.com', '2023-11-01', 'Mariana Lima'), (603534051, 2, 2, 'Páginas do meio estão em branco', 'producao.impressao@garantia.com', '2023-11-02', 'Roberto Dias'), (603534052, 3, 4, 'Solicitei 5 unidades, vieram apenas 3', 'qualidade@garantia.com', '2023-11-03', 'Mariana Lima'), (603534053, 4, 4, 'Comprei manual do Ducato, veio do Argo', 'qualidade@garantia.com', '2023-11-04', 'Mariana Lima'), (603534054, 5, 2, 'Impressão borrada nas páginas de elétrica', 'producao.impressao@garantia.com', '2023-11-05', 'Roberto Dias'), (603534055, 6, 2, 'Folhas soltando da lombada (encadernação ruim)', 'producao.impressao@garantia.com', '2023-11-06', 'Roberto Dias'), (603534056, 7, 4, 'Manual veio molhado/úmido', 'qualidade@garantia.com', '2023-11-07', 'Mariana Lima'), (603534057, 8, 4, 'Caixa amassada danificou a capa dura', 'qualidade@garantia.com', '2023-11-08', 'Mariana Lima'), (603534058, 9, 2, 'Pedido incompleto, faltou o encarte de garantia', 'producao.impressao@garantia.com', '2023-11-09', 'Roberto Dias'), (603534059, 10, 3, 'Cores da impressão invertidas (imagem rosa)', 'midias.digitais@garantia.com', '2023-11-10', 'Fernanda Alves'), (603534060, 11, 4, 'Página 50 rasgada ao meio', 'qualidade@garantia.com', '2023-11-12', 'Mariana Lima'), (603534061, 11, 4, 'Veio manual da Jeep em vez de Fiat', 'qualidade@garantia.com', '2023-11-12', 'Mariana Lima'), (603534062, 12, 3, 'Gabarito de respostas veio errado', 'midias.digitais@garantia.com', '2023-11-15', 'Fernanda Alves'), (603534063, 12, 4, 'Livro com marcas de uso (parece usado)', 'qualidade@garantia.com', '2023-11-16', 'Mariana Lima'), (603534064, 13, 2, 'Diagrama elétrico ilegível', 'producao.impressao@garantia.com', '2023-11-18', 'Roberto Dias'), (603534065, 14, 3, 'Falta índice remissivo (erro de diagramação)', 'midias.digitais@garantia.com', '2023-11-20', 'Fernanda Alves'), (603534066, 14, 4, 'Comprei 2, veio 1 manual em francês', 'qualidade@garantia.com', '2023-11-21', 'Mariana Lima'), (603534067, 15, 3, 'Erro ortográfico grosseiro na capa', 'midias.digitais@garantia.com', '2023-11-22', 'Fernanda Alves'), (603534068, 16, 2, 'Papel de gramatura inferior ao anunciado', 'producao.impressao@garantia.com', '2023-11-25', 'Roberto Dias'), (603534069, 16, 4, 'Veio modelo 2022, comprei 2023', 'qualidade@garantia.com', '2023-11-26', 'Mariana Lima'); 

* INSERT INTO Envio (id_atendimento, id_setor, forma_do_envio, observacoes_do_envio, data_do_envio, medida_adotada) VALUES (1, 4, 'Transportadora', 'Reenvio da unidade danificada por substituição', '2023-11-05', 'Reenvio de produto'), (2, 2, 'Correios - PAC', 'Envio de nova via impressa após conferência de qualidade', '2023-11-08', 'Substituição'), (3, 4, 'Retirada em loja', 'Cliente autorizou retirada de 2 unidades faltantes na filial', '2023-11-07', 'Envio complementar'), (4, 4, 'Transportadora', 'Coleta do item incorreto para devolução e substituição', '2023-11-09', 'Substituição'), (5, 2, 'Transportadora', 'Reimpressão das páginas afetadas e envio por urgência', '2023-11-10', 'Reenvio de produto'), (6, 2, 'Transportadora', 'Encaminhado para encadernação reforçada e reenvio', '2023-11-11', 'Reenvio de produto'), (7, 4, 'Transportadora', 'Produto enviado seco após secagem e revisão', '2023-11-10', 'Reenvio de produto'), (8, 4, 'Transportadora', 'Proteção adicional na embalagem e novo envio', '2023-11-12', 'Reenvio de produto'), (9, 2, 'Retirada em loja', 'Envio do encarte faltante separadamente', '2023-11-13', 'Envio complementar'), (10, 3, 'Transportadora', 'Reimpressão corrigida das páginas com problema de cores', '2023-11-14', 'Substituição'), (11, 4, 'Transportadora', 'Produto recolhido para análise (cliente recebeu outra referência)', '2023-11-16', 'Coleta para análise'), (12, 4, 'Transportadora', 'Coleta e análise — possível troca por lote correto', '2023-11-16', 'Coleta para análise'), (13, 3, 'Correios - Sedex', 'Envio da versão corrigida do gabarito', '2023-11-18', 'Substituição'), (14, 4, 'Transportadora', 'Livro inspecionado; possível reembolso se confirmar uso', '2023-11-20', 'Aguardando verificação / Reembolso'), (15, 2, 'Transportadora', 'Reimpressão do diagrama e remessa', '2023-11-22', 'Reenvio de produto'), (16, 3, 'Retirada em loja', 'Cliente orientado a retirar a segunda via em loja (correção)', '2023-11-23', 'Envio complementar'), (17, 4, 'Transportadora', 'Coleta para reimpressão e troca por exemplares corretos', '2023-11-24', 'Substituição'), (18, 3, 'Transportadora', 'Envio de amostra do papel correto para conferência', '2023-11-28', 'Envio de amostra'), (19, 2, 'Transportadora', 'Envio de segunda via com gramatura correta', '2023-11-28', 'Substituição'), (20, 4, 'Transportadora', 'Coleta do item entregue (modelo errado) para troca por modelo 2023', '2023-11-29', 'Substituição'); 
