
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