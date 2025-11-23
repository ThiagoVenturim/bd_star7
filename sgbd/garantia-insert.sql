USE Garantia;

--INSERINDO SETORES
INSERT INTO Setor (nome_setor, responsavel, email_do_responsavel) VALUES 
('Suporte Técnico', 'Carlos Souza', 'carlos.souza@empresa.com'),
('Controle de Qualidade', 'Mariana Lima', 'mariana.lima@empresa.com'),
('Logística Reversa', 'Roberto Dias', 'roberto.dias@empresa.com'),
('Vendas e Pós-venda', 'Fernanda Alves', 'fernanda.alves@empresa.com');

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
('F', 'Beatriz Rocha', 'bia.rocha@email.com', 'Alameda Santos', '300', 'Jardins', '678.901.234-55', NULL, NULL);

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
('NF-00109', 'Manual Fiat - FIAT Toro', 1, '2023-10-30', '');

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
('NF-00109', 10, 1, 'Imagem da webcam está rosa', 'suporte@garantia.com', '2023-11-10', 'Julia Mendes');

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
(10, 1, 'Correios', 'Sensor queimado', '2023-11-14', 'Reembolso total');
