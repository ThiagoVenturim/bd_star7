
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


 
---
 
<div id='Introducao'/>  
 
## 1- INTRODUÇÃO  

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

*O minimundo é uma descrição textual simplificada da realidade de um domínio específico que se deseja modelar em um banco de dados. Ele serve para identificar os elementos mais relevantes do sistema (entidades, atributos e relacionamentos) e estabelecer como essas informações se conectam entre si. Na prática, o minimundo atua como uma ponte entre o problema real e o modelo conceitual (por exemplo, o Diagrama Entidade-Relacionamento – DER), garantindo que somente os aspectos essenciais do negócio sejam representados no banco de dados. Assim, evita-se excesso de informações irrelevantes e garante-se que a modelagem atenda às necessidades do sistema a ser desenvolvido.*

A empresa Star 7 atua no desenvolvimento de manuais, kits de bordo, livros e outros materiais gráficos. O presente projeto modela o sistema de Garantia, responsável pelo tratamento de chamados de clientes referentes a problemas nos produtos entregues. 

O cliente é identificado por id do cliente, possuem também nome e e-mail do representante que entrou em contato e endereço do cliente, os Clientes podem ser físicos identificados por CPF ou jurídicos por CNPJ e nome fantasia. O cliente entra em contato com o setor de atendimento, informando-os dados do produto: id do produto, o código da nota fiscal do produto, uma foto do defeito, a data do que foi realizada o pedido, a quantidade o nome.	 

O atendimento é identificado por id do atendimento, deve anotar a data que foram realizados o próprio atendimento, o nome e o e-mail do funcionário que realizou e uma descrição textual do problema, e após encaminhar para o setor. 

Os setores possuem nome e apenas um responsável por cada setor com registro do Email, o setor recebe o produto e o responsável deve analisar o problema e tomar as medidas necessárias.  Os setores envolvidos podem ser:  Kit de Bordo, Publicação Editorial, Publicação Técnica e Marketing. 

Cada chamado só pode estar associado a um setor por vez, ou seja, não é permitido que o mesmo problema seja registrado em dois setores simultaneamente. O responsável pelo setor deve solucionar o problema e encaminhar o produto para devolução.  

 A devolução tem que ter uma data que foi solucionado, a forma de envio a medida adotada e as observações sobre a devolução e pôr fim a devolução encaminha para o cliente se o cliente for jurídico deve ser gerado uma nova nota fiscal de devolução referenciando a antiga. O mesmo produto pode voltar N vezes para a garantia 

 ---

<div id='Conceitual '/>  
 
## 4- MODELO CONCEITUAL 

*O modelo conceitual, é uma representação de alto nível e abstrata de um sistema, focada em descrever a estrutura, as entidades, seus atributos e os relacionamentos entre elas, com base em conceitos e regras de negócio. Ele ignora detalhes técnicos e de implementação, sendo usado para comunicação entre equipes de negócio e tecnologia, servindo como base para modelos mais detalhados, como os lógicos e físicos.* 

Essa seção apresenta o projeto conceitual do SAM. Figura 1 apresenta o diagrama entidade-relacionamento (ER) do modelo conceitual do Sistema de Garantia. 

![alt text](imagens/ModeloConceitual.png)
Figura 1- Modelo Conceitual  
O modelo conceitual desenvolvido para o sistema de garantia da empresa Star 7 tem como objetivo representar de forma clara e estruturada todo o processo de garantia de produtos, abrangendo desde o registro do atendimento até a eventual devolução do item. A modelagem foi elaborada com base nas regras de negócio e requisitos funcionais identificados, buscando garantir rastreabilidade, integridade e eficiência no controle das informações. 

A entidade Cliente armazena os dados de identificação e contato dos solicitantes, sendo composta pelos atributos id_cliente, nome_do_solicitante, email_do_solicitante e endereco. Essa entidade possui uma especialização disjunta e total em Pessoa Física e Pessoa Jurídica, de modo que cada cliente pertence obrigatoriamente a um desses tipos. Clientes físicos são identificados pelo CPF, enquanto clientes jurídicos possuem CNPJ e Nome Fantasia. Essa especialização permite diferenciar os tipos de clientes e tratar regras de negócio específicas, como a emissão de nota fiscal de devolução apenas para clientes jurídicos. 

A entidade Produto representa os itens adquiridos pelos clientes e é composta pelos atributos id_produto, nome_do_produto, foto_do_produto, data_do_pedido, quantidade e numero_da_nota_fiscal. Cada produto pode estar associado a diversos atendimentos ao longo do tempo, possibilitando o rastreamento do histórico de ocorrências e devoluções. O relacionamento entre Atendimento e Produto é de N:1, indicando que cada atendimento está vinculado a um único produto, mas um produto pode gerar vários atendimentos diferentes. 

A entidade Atendimento é o núcleo central do sistema, responsável por registrar todas as ocorrências e interações com os clientes. Ela contém os atributos id_atendimento, data_de_atendimento, descricao_do_problema, nome_atendente e email_atendente. Cada atendimento está vinculado a um único cliente, possuindo uma relação 1:N entre Cliente e Atendimento, e também a um único setor, em uma relação N:1 entre Atendimento e Setor, além de envolver um produto específico. Essa modelagem permite que o sistema mantenha controle sobre quem abriu o chamado, qual produto foi afetado, quem realizou o atendimento e para qual setor o caso foi encaminhado. 

A entidade Setor representa as áreas internas responsáveis pela análise dos atendimentos e pela tomada de decisões quanto às medidas corretivas. Ela possui os atributos nome_do_setor, responsavel_do_setor e email_responsavel. O relacionamento entre Atendimento e Setor é de N:1, uma vez que vários atendimentos podem ser direcionados a um mesmo setor, mas cada atendimento é tratado por apenas um setor por vez. 

A entidade Devolução registra o processo de retorno dos produtos após o atendimento. Ela inclui os atributos data_de_devolucao, forma_de_envio, medida_adotada e observacoes_da_devolucao. O relacionamento entre Atendimento e Devolução é de 1:N, permitindo que um mesmo atendimento gere várias devoluções quando necessário, conforme o produto passe mais de uma vez pelo processo de garantia. 

O modelo conceitual proposto integra de forma coesa as entidades Cliente, Produto, Atendimento, Setor e Devolução, garantindo a rastreabilidade completa do fluxo de atendimento e devolução de produtos. Essa estrutura proporciona uma visão clara, organizada e eficiente do processo de garantia, desde o registro da ocorrência até a resolução final. 

O Atendimento foi modelado como uma entidade porque possui existência e atributos próprios, que não pertencem diretamente nem ao cliente nem ao produto. Conceitualmente, um relacionamento se torna uma entidade quando o evento que ele representa tem significado independente e precisa armazenar informações adicionais. No contexto da empresa Star 7, o atendimento não é apenas a ligação entre Cliente e Produto, mas um evento de negócio completo, que contém dados como a data e hora em que ocorreu, o nome e o e-mail do atendente, a descrição do problema, o setor responsável e o histórico de devoluções geradas. Assim, o atendimento representa uma ocorrência real que precisa ser registrada, monitorada e atualizada de forma individual. Se fosse modelado apenas como um relacionamento entre Cliente e Produto, informações importantes ficariam sem local adequado para armazenamento, comprometendo o controle do ciclo de vida de cada chamado. 

Portanto, o Atendimento é corretamente representado como uma entidade fraca de processo ou evento, central no modelo, pois conecta e documenta todas as interações entre Cliente, Produto, Setor e Devolução dentro do sistema de garantia. Essa estrutura garante uma visão integrada de todos os processos da empresa, controle histórico dos atendimentos e devoluções, rastreabilidade completa de cada produto, organização eficiente das informações de clientes e setores e facilidade para futuras expansões do sistema. 

O modelo também reflete regras de negócio essenciais, como a obrigatoriedade de cada cliente ser físico ou jurídico, a possibilidade de um produto gerar múltiplos atendimentos, a existência de um único setor responsável por cada caso e a possibilidade de um atendimento originar diversas devoluções. Além disso, o modelo assegura que um atendimento sempre esteja vinculado a um cliente e a um produto, reforçando a integridade referencial. 

Por fim, o modelo conceitual do sistema de garantia da empresa Star 7 oferece uma base sólida para a futura implementação do modelo lógico e físico do banco de dados, promovendo organização, rastreabilidade e suporte à tomada de decisão em todas as etapas do processo de garantia. 

 

 
| Tipo               | Subtipo    | Rótulo                             | Descrição                                                                                                                                                     |
| ------------------ | ---------- | ---------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| **Entidade**       | Forte      | **Cliente**                        | Armazena os dados de identificação e contato dos solicitantes. Possui uma especialização disjunta e total em Pessoa Física e Pessoa Jurídica.                 |
| **Entidade**       | Fraca      | **Físico**                         | Subtipo de Cliente que representa pessoas físicas, identificadas por CPF.                                                                                     |
| **Entidade**       | Fraca      | **Jurídico**                       | Subtipo de Cliente que representa pessoas jurídicas, identificadas por CNPJ e Nome Fantasia.                                                                  |
| **Entidade**       | Forte      | **Produto**                        | Representa os itens adquiridos pelos clientes, contendo id do produto, nome do produto, foto do produto, data do pedido, quantidade e número da nota fiscal.  |
| **Entidade**       | Forte      | **Atendimento**                    | Registra as ocorrências relacionadas a problemas nos produtos. Contém data de atendimento, descrição do problema, nome e email do atendente.                  |
| **Entidade**       | Forte      | **Setor**                          | Representa as áreas internas responsáveis pela análise dos atendimentos, contendo nome do setor, responsável e email do responsável.                          |
| **Entidade**       | Forte      | **Devolução**                      | Registra o processo de retorno de produtos após o atendimento, com data de devolução, forma de envio, medida adotada, observações e exigência de nota fiscal. |
| **Relacionamento** | 1:N        | **Cliente–Produto**                | Um cliente pode possuir vários produtos cadastrados.                                                                                                          |
| **Relacionamento** | 1:N        | **Cliente–Atendimento**            | Cada atendimento está associado a um único cliente, mas um cliente pode ter vários atendimentos.                                                              |
| **Relacionamento** | N:N        | **Atendimento–Produto**            | Um atendimento pode envolver um ou mais produtos relacionados a um cliente.                                                                                   |
| **Relacionamento** | N:1        | **Atendimento–Setor**              | Vários atendimentos podem ser encaminhados para um mesmo setor.                                                                                               |
| **Relacionamento** | 1:N        | **Atendimento–Devolução**          | Um mesmo atendimento pode gerar várias devoluções, conforme a necessidade.                                                                                    |
| **Atributo**       | Chave      | **CPF**                            | Identificador único da entidade Físico.                                                                                                                       |
| **Atributo**       | Chave      | **CNPJ**                           | Identificador único da entidade Jurídico.                                                                                                                     |
| **Atributo**       | Simples    | **Nome do Solicitante**            | Nome completo do cliente.                                                                                                                                     |
| **Atributo**       | Simples    | **Email**                          | Endereço eletrônico do cliente.                                                                                                                               |
| **Atributo**       | Simples    | **Endereço**                       | Local de residência ou sede do cliente.                                                                                                                       |
| **Atributo**       | Simples    | **Nome Fantasia**                  | Nome comercial da empresa (somente para Pessoa Jurídica).                                                                                                     |
| **Atributo**       | Chave      | **ID Produto**                     | Identificador único do produto.                                                                                                                               |
| **Atributo**       | Simples    | **Nome do Produto**                | Nome descritivo do produto.                                                                                                                                   |
| **Atributo**       | Simples    | **Foto do Produto**                | Imagem ilustrativa do produto.                                                                                                                                |
| **Atributo**       | Simples    | **Data do Pedido**                 | Data em que o produto foi adquirido.                                                                                                                          |
| **Atributo**       | Simples    | **Quantidade**                     | Número de unidades do produto.                                                                                                                                |
| **Atributo**       | Simples    | **Número da Nota Fiscal**          | Identificador fiscal do pedido.                                                                                                                               |
| **Atributo**       | Simples    | **Data de Atendimento**            | Data em que o atendimento foi registrado.                                                                                                                     |
| **Atributo**       | Simples    | **Descrição do Problema**          | Texto detalhando o problema relatado.                                                                                                                         |
| **Atributo**       | Simples    | **Nome do Atendente**              | Nome do funcionário responsável pelo atendimento.                                                                                                             |
| **Atributo**       | Simples    | **Email do Atendente**             | Endereço de e-mail do atendente.                                                                                                                              |
| **Atributo**       | Simples    | **Nome do Setor**                  | Nome da área interna responsável pelo atendimento.                                                                                                            |
| **Atributo**       | Simples    | **Responsável**                    | Nome do responsável pelo setor.                                                                                                                               |
| **Atributo**       | Simples    | **Email do Responsável**           | Endereço de e-mail do responsável pelo setor.                                                                                                                 |
| **Atributo**       | Simples    | **Data de Devolução**              | Data em que o produto foi devolvido.                                                                                                                          |
| **Atributo**       | Simples    | **Forma de Envio**                 | Método de envio utilizado na devolução.                                                                                                                       |
| **Atributo**       | Simples    | **Medida Adotada**                 | Ação tomada durante o processo de devolução.                                                                                                                  |
| **Atributo**       | Simples    | **Observações da Devolução**       | Informações adicionais sobre a devolução.                                                                                                                     |
| **Atributo**       | Simples    | **Exige Nota Fiscal de Devolução** | Indica se a devolução requer nota fiscal.                                                                                                                     |
| **Restrição**      | Totalidade | **Cliente–Subtipos**               | Especialização disjunta e total: todo cliente é Físico ou Jurídico.                                                                                           |

 
---


