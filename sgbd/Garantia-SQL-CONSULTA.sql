use garantia;

SELECT 
    c.cod_cliente,
    c.nome_solicitante,
    COUNT(a.id_atendimento) AS total_acionamentos
FROM Atendimento a
JOIN Cliente c ON a.cod_cliente = c.cod_cliente
GROUP BY 
    c.cod_cliente,
    c.nome_solicitante
ORDER BY 
    total_acionamentos DESC;


SELECT 
    c.tipo_cliente,
    COUNT(a.id_atendimento) AS total_acionamentos
FROM Atendimento a
JOIN Cliente c ON a.cod_cliente = c.cod_cliente
GROUP BY 
    c.tipo_cliente
ORDER BY 
    total_acionamentos DESC;


SELECT 
    a.id_atendimento,
    a.data_do_atendimento,
    c.nome_solicitante,
    p.nome_do_produto,
    s.nome_setor
FROM Atendimento a
JOIN Cliente c ON a.cod_cliente = c.cod_cliente
JOIN Produto p ON a.codigo_produto = p.codigo_produto
JOIN Setor s ON a.id_setor = s.id_setor
WHERE a.data_do_atendimento BETWEEN '2023-11-01' AND '2023-11-30'
ORDER BY a.data_do_atendimento;


SELECT 
    s.id_setor,
    s.nome_setor,
    COUNT(a.id_atendimento) AS total_atendimentos
FROM Atendimento a
JOIN Setor s ON a.id_setor = s.id_setor
GROUP BY 
    s.id_setor,
    s.nome_setor
ORDER BY 
    total_atendimentos DESC;


SELECT 
    p.codigo_produto,
    p.nome_do_produto,
    s.nome_setor,
    COUNT(a.id_atendimento) AS total_defeitos
FROM Atendimento a
JOIN Produto p ON a.codigo_produto = p.codigo_produto
JOIN Setor s ON a.id_setor = s.id_setor
GROUP BY 
    p.codigo_produto,
    p.nome_do_produto,
    s.nome_setor
ORDER BY 
    total_defeitos DESC;

SELECT 
    e.id_devolucao,
    a.id_atendimento,
    c.cod_cliente,
    c.nome_solicitante,
    p.codigo_produto,
    p.nome_do_produto,
    e.medida_adotada,
    e.data_do_envio
FROM Envio e
JOIN Atendimento a ON e.id_atendimento = a.id_atendimento
JOIN Cliente c ON a.cod_cliente = c.cod_cliente
JOIN Produto p ON a.codigo_produto = p.codigo_produto
ORDER BY e.id_devolucao;

SELECT 
    cod_cliente,
    tipo_cliente,
    nome_solicitante,
    email_solicitante,
    cpf,
    cnpj,
    nome_fantasia
FROM Cliente;


SELECT 
    codigo_produto,
    numero_da_nota_fiscal,
    nome_do_produto,
    quantidade,
    data_da_entrega
FROM Produto;



SELECT 
    id_setor,
    nome_setor,
    responsavel,
    email_do_responsavel
FROM Setor;


SELECT 
    a.id_atendimento,
    a.codigo_produto,
    a.cod_cliente,
    a.id_setor,
    a.descricao_cliente,
    a.data_do_atendimento,
    a.nome_atendente
FROM Atendimento a;


SELECT 
    id_envio,
    id_atendimento,
    id_setor,
    forma_do_envio,
    observacoes_do_envio,
    data_do_envio,
    medida_adotada
FROM Envio;
