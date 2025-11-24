USE Garantia;

--INSERINDO SETORES
INSERT INTO Setor (nome_setor, responsavel, email_do_responsavel) VALUES 
('Suporte Técnico', 'Carlos Souza', 'carlos.souza@empresa.com'),
('Controle de Qualidade', 'Mariana Lima', 'mariana.lima@empresa.com'),
('Logística Reversa', 'Roberto Dias', 'roberto.dias@empresa.com'),
('Vendas e Pós-venda', 'Fernanda Alves', 'fernanda.alves@empresa.com'),
('Eletrônicos','Sérgio Ramos','sergio@empresa.com'),
('Garantia','Patrícia Duarte','patricia@empresa.com'),
('Logística','Igor Nascimento','igor@empresa.com'),
('Análise Técnica','Evelyn Castro','evelyn@empresa.com'),
('Reparo','Maurício Prado','mauricio@empresa.com'),
('Despacho','Tatiane Lopes','tatiane@empresa.com'),
('Avaliação','Ricardo Salles','ricardo@empresa.com'),
('Troca','Joana Freitas','joana@empresa.com'),
('Atendimento Geral','Eduardo Reis','eduardo@empresa.com'),
('Supervisão','Helena Fagundes','helena@empresa.com');

--INSERINDO Cliente
INSERT INTO Cliente (tipo_cliente, nome_solicitante, email_solicitante, rua, endereco, bairro, cpf, cnpj, nome_fantasia) VALUES
('F', 'João da Silva', 'joao.silva@email.com', 'Rua das Flores', '123', 'Centro', '123.456.789-00', NULL, NULL),
('F', 'Maria Oliveira', 'maria.oli@email.com', 'Av. Paulista', '1000, Apt 40', 'Bela Vista', '234.567.890-11', NULL, NULL),
('J', 'Tech Solutions Ltda', 'contato@techsol.com', 'Rua Inovação', '500', 'Tecnopolo', NULL, '12.345.678/0001-90', 'Tech Soluções'),
('F', 'Pedro Santos', 'pedro.santos@email.com', 'Rua do Lago', '45', 'Jardim', '345.678.901-22', NULL, NULL),
('J', 'Comércio Global SA', 'sac@comercioglobal.com', 'Av. Brasil', '2020', 'Industrial', NULL, '98.765.432/0001-10', 'Global Shop'),
('F', 'Ana Costa', 'ana.costa@email.com', 'Rua A', '12', 'Vila Nova', '456.789.012-33', NULL, NULL),
('J', 'InforPeças ME', 'gerencia@inforpecas.com', 'Rua dos Hardwares', '88', 'Centro', NULL, '11.222.333/0001-44', 'InforPeças'),
('F', 'Lucas Pereira', 'lucas.p@email.com', 'Travessa B', '9', 'São José', '567.890.123-44', NULL, NULL),
('J', 'Escritório Silva', 'adm@silvaadv.com', 'Rua da Lei', '101', 'Jurídico', NULL, '55.666.777/0001-88', 'Silva Advogados'),
('F', 'Beatriz Rocha', 'bia.rocha@email.com', 'Alameda Santos', '300', 'Jardins', '678.901.234-55', NULL, NULL),
('F','Bruna Almeida','bruna.almeida@gmail.com','Rua das Acácias','102','Centro','421.589.630-12',NULL,NULL),
('F','Thiago Monteiro','t.monteiro@gmail.com','Avenida Brasil','455','Jardim Europa','852.147.963-27',NULL,NULL),
('F','Larissa Couto','larissa.couto@gmail.com','Rua das Flores','88','Santa Luzia','369.741.258-40',NULL,NULL),
('F','Renato Barros','renato.barros@gmail.com','Avenida Paulista','900','Nova Esperança','214.785.963-11',NULL,NULL),
('F','Camila Torres','camila.torres@gmail.com','Rua do Sol','122','Vila Mariana','741.369.258-66',NULL,NULL),
('J','Mercado Bom Preço','contato@bompreco.com','Avenida Central','501','Comercial',NULL,'13.456.789/0001-55','Bom Preço'),
('J','MídiaMax Publicidade','suporte@midiamax.com','Rua Ouro Preto','233','Industrial',NULL,'22.345.678/0001-12','MídiaMax'),
('J','Auto Peças Silva','vendas@autossilva.com','Avenida Amazonas','677','Automotores',NULL,'77.888.999/0001-90','Peças Silva'),
('J','Casa Verde Hortifruti','contato@casaverde.com','Rua Ipê Amarelo','144','Verdejante',NULL,'11.222.333/0001-08','Casa Verde'),
('J','ConstruForte Materiais','atendimento@construforte.com','Avenida Tiradentes','311','Obras',NULL,'99.555.444/0001-77','ConstruForte');

--INSERINDO Produto
INSERT INTO Produto (numero_da_nota_fiscal, nome_do_produto, quantidade, data_da_entrega, foto_do_produto) VALUES
('NF-00100', 'Livro Bernoulli', 1, '2023-10-01', ''), -- dps vai ser alterado com os links corretos
('NF-00101', 'Manual Fiat - FIAT ARGO', 1, '2023-10-05', ''),
('NF-00102', 'Manual Fiat - FIAT CRONOS', 5, '2023-10-10', ''),
('NF-00103', 'Manual Fiat - FIAT DUCATO', 1, '2023-10-12', ''),
('NF-00104', 'Manual Fiat - FIAT FASTBACK', 2, '2023-10-15', ''),
('NF-00105', 'Manual Fiat - FIAT FIORINO', 1, '2023-10-20', ''),
('NF-00106', 'Manual Fiat - FIAT MOBI', 1, '2023-10-22', ''),
('NF-00107', 'Manual Fiat - FIAT PULSE', 1, '2023-10-25', ''),
('NF-00108', 'Manual Fiat - FIAT SCUDO', 10, '2023-10-28', ''),
('NF-00109', 'Manual Fiat - FIAT Toro', 1, '2023-10-30', ''),
('NF1021','Smart TV 55" UltraHD',1,'2025-01-11','tv55.jpg'),
('NF1022','Notebook Gamer VX',1,'2025-01-12','notebookvx.jpg'),
('NF1023','Máquina de Lavar 12kg',1,'2025-01-13','lavadora12.jpg'),
('NF1024','Cafeteira Automática',2,'2025-01-14','cafeteira.jpg'),
('NF1025','Aspirador Ciclônico',1,'2025-01-15','aspirador.jpg'),
('NF1026','Smartphone Pro Max',1,'2025-01-16','smartphone.jpg'),
('NF1027','Ar Condicionado 12000 BTUs',1,'2025-01-17','ar12.jpg'),
('NF1028','Liquidificador Turbo',3,'2025-01-18','liquidificador.jpg'),
('NF1029','Caixa de Som Surround',2,'2025-01-19','sonsurr.jpg'),
('NF1030','Forno Elétrico 45L',1,'2025-01-20','forno.jpg');

--INSERINDO Atendimento
INSERT INTO Atendimento (numero_da_nota_fiscal, cod_cliente, id_setor, descricao_cliente, email_atendimento, data_do_atendimento, nome_atendente) VALUES
('NF-00100', 1, 1, 'Monitor piscando intermitentemente', 'suporte@garantia.com', '2023-11-01', 'Carlos Souza'),
('NF-00101', 2, 2, 'Produto chegou com tecla quebrada', 'logistica@garantia.com', '2023-11-02', 'Roberto Dias'),
('NF-00102', 3, 1, 'Um dos notebooks não liga', 'suporte@garantia.com', '2023-11-03', 'Carlos Souza'),
('NF-00103', 4, 4, 'Comprei o modelo errado, quero trocar', 'vendas@garantia.com', '2023-11-04', 'Fernanda Alves'),
('NF-00104', 5, 2, 'Rodízio da cadeira travado', 'logistica@garantia.com', '2023-11-05', 'Roberto Dias'),
('NF-00105', 6, 1, 'Bateria descarregando muito rápido', 'suporte@garantia.com', '2023-11-06', 'Carlos Souza'),
('NF-00106', 7, 1, 'Impressora fazendo barulho alto', 'suporte@garantia.com', '2023-11-07', 'Julia Mendes'),
('NF-00107', 8, 2, 'Caixa chegou amassada e fone riscado', 'logistica@garantia.com', '2023-11-08', 'Roberto Dias'),
('NF-00108', 9, 4, 'Pedido incompleto, faltaram 2 cabos', 'vendas@garantia.com', '2023-11-09', 'Fernanda Alves'),
('NF-00109', 10, 1, 'Imagem da webcam está rosa', 'suporte@garantia.com', '2023-11-10', 'Julia Mendes'),
('NF1021',11,13,'Tela apagando após alguns minutos','atendimento@loja.com','2025-02-01','Marcos'),
('NF1022',12,14,'Superaquecimento durante uso','atendimento@loja.com','2025-02-02','Letícia'),
('NF1023',13,12,'Não centrifuga corretamente','atendimento@loja.com','2025-02-03','João'),
('NF1024',14,11,'Vazamento interno','atendimento@loja.com','2025-02-04','Fernanda'),
('NF1025',15,10,'Perda de sucção','atendimento@loja.com','2025-02-05','Carlos'),
('NF1026',16,14,'Câmera não abre','atendimento@loja.com','2025-02-06','Rafaela'),
('NF1027',17,9,'Barulho anormal','atendimento@loja.com','2025-02-07','Daniel'),
('NF1028',18,8,'Lâminas travando','atendimento@loja.com','2025-02-08','Juliana'),
('NF1029',19,11,'Som falhando em volumes altos','atendimento@loja.com','2025-02-09','Thiago'),
('NF1030',20,7,'Não aquece adequadamente','atendimento@loja.com','2025-02-10','Fabiana');


--INSERINDO Devoluçao
INSERT INTO Devolucao (id_atendimento, id_setor, forma_do_envio, observacoes_da_devolucao, data_da_devolucao, medida_adotada) VALUES
(1, 1, 'Correios', 'Defeito confirmado no painel LCD', '2023-11-05', 'Troca autorizada'),
(2, 2, 'Transportadora', 'Dano físico no transporte', '2023-11-06', 'Reembolso'),
(3, 1, 'Transportadora', 'Falha na placa mãe', '2023-11-07', 'Reparo em garantia'),
(4, 4, 'Correios', 'Produto lacrado, troca por modelo superior', '2023-11-08', 'Vale-troca gerado'),
(5, 2, 'Técnico in loco', 'Substituição da base da cadeira', '2023-11-09', 'Reparo efetuado'),
(6, 1, 'Correios', 'Bateria viciada constatada', '2023-11-10', 'Troca de aparelho'),
(7, 1, 'Técnico in loco', 'Sujeira no toner, limpeza feita', '2023-11-11', 'Manutenção preventiva'),
(8, 2, 'Correios', 'Produto avariado', '2023-11-12', 'Troca autorizada'),
(9, 4, 'N/A', 'Envio dos itens faltantes', '2023-11-13', 'Envio complementar'),
(10, 1, 'Correios', 'Sensor queimado', '2023-11-14', 'Reembolso total'),
(11,13,'Transportadora','Equipamento com dano de fábrica','2025-03-01','Troca'),
(12,14,'Correios','Falha confirmada em testes','2025-03-02','Reparo'),
(13,12,'Coleta domiciliar','Ruído excessivo confirmado','2025-03-03','Reembolso'),
(14,11,'Transportadora','Peça interna solta','2025-03-04','Troca'),
(15,10,'Correios','Produto sem vedação','2025-03-05','Reparo'),
(16,14,'Correios','Lente quebrada','2025-03-06','Troca'),
(17,9,'Transportadora','Vibração extrema','2025-03-07','Reembolso'),
(18,8,'Coleta local','Teste apontou falha mecânica','2025-03-08','Reparo'),
(19,11,'Transportadora','Som distorcido','2025-03-09','Troca'),
(20,7,'Correios','Resistência queimada','2025-03-10','Reembolso');

