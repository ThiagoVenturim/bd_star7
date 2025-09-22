
# Introdução à Empresa Star7 

A Star7 é uma empresa multinacional que atua no desenvolvimento, gestão, produção e logística de conteúdo em diferentes idiomas, oferecendo soluções completas para empresas de diversos setores. Sua missão é transformar produtos em histórias de sucesso em todo o mundo, unindo talento e tecnologia para ajudar clientes a maximizar seu potencial. 

Presente em três continentes e com mais de 1.250 colaboradores distribuídos em várias sedes globais (incluindo Brasil, Itália, Espanha, Alemanha, França e EUA), a Star7 oferece uma ampla gama de serviços, que vão desde engenharia de serviços, modelagem 3D, publicações técnicas, traduções, consultoria e comunicação, até impressão digital e offset, montagem de kits, logística Just in Time e gestão de terminologia. 

No Brasil, a empresa conta com unidades em Belo Horizonte, Betim, São Paulo e Porto Real (RJ), oferecendo suporte direto às necessidades de clientes locais e internacionais. A filosofia de trabalho Integrale7 garante uma abordagem global e integrada, cobrindo todas as etapas do projeto, desde a concepção até a entrega final. 

Reconhecida pela qualidade e inovação, a Star7 é certificada com ISO 9001:2015 e FSC® (Cadeia de Custódia), reforçando seu compromisso com a excelência e a sustentabilidade. 

 

## Especificação do Minimundo – Star 7 (Setor de Garantia) 

O minimundo é uma descrição simplificada da realidade de um domínio específico que se deseja modelar em um banco de dados. Ele serve para identificar os elementos mais relevantes do sistema (entidades, atributos e relacionamentos) e estabelecer como essas informações se conectam entre si. 

Na prática, o minimundo atua como uma ponte entre o problema real e o modelo conceitual (por exemplo, o Diagrama Entidade-Relacionamento – DER), garantindo que somente os aspectos essenciais do negócio sejam representados no banco de dados. Assim, evita-se excesso de informações irrelevantes e garante-se que a modelagem atenda às necessidades do sistema a ser desenvolvido. 

A empresa Star 7 atua no desenvolvimento de manuais, kits de bordo, livros e outros materiais gráficos. O presente projeto modela o sistema de Garantia, responsável pelo tratamento de chamados de clientes referentes a problemas nos produtos entregues. 

Os clientes são empresas, identificados por CNPJ, e possuem também nome da empresa e outros dados de contato. Cada cliente pode abrir diversos chamados.	 

Um chamado é aberto quando o cliente entra em contato com o setor de atendimento, informando o código da nota fiscal do produto, o número do pedido, uma foto do defeito e uma observação descritiva. Também deve ser registrada a data do pedido e a data em que o chamado foi aberto. 

O atendimento recebe o chamado e encaminha para o setor responsável pela análise inicial do problema. Os setores envolvidos podem ser: Gráfica, Kit de Bordo, Publicação Técnica, Marketing, Engenharia ou Tradução. 

Cada chamado só pode estar associado a um setor por vez, ou seja, não é permitido que o mesmo problema seja registrado em dois setores simultaneamente. Entretanto, o setor que recebeu o chamado pode encaminhá-lo para outro setor caso identifique que o problema pertence a uma área diferente. Por exemplo, o setor de Kit de Bordo pode verificar que o defeito está no manual impresso e encaminhar o chamado para a Gráfica. 

Esse processo de encaminhamento pode se repetir até que o setor correto assuma a responsabilidade e finalize a solução. Assim, o sistema deve manter um histórico de encaminhamentos do chamado entre setores. 

Após a análise e correção, o setor responsável gera uma nova nota fiscal referente ao produto corrigido e o material é reenviado ao cliente. O sistema deve registrar qual setor solucionou o problema e qual foi a nota fiscal de
