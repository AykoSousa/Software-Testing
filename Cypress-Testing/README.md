# Automação de Testes na Aplicação Dev Finance usando Cypress

## Descrição:
O projeto consiste em uma aplicação web que permite o dev ter seu controle financeiro através de cadastro de entradas e saídas de despesas.
Esse projeto foi desenvolvido pelo professor Mayk Brito da Rocketseat, mas tomei como base a playlist de [Cypress](https://www.youtube.com/playlist?list=PLnUo-Rbc3jjztMO4K8b-px4NE-630VNKY) do canal [Agilizei](https://www.youtube.com/@Agilizei).

### Pré-requisitos:
Antes de executar os testes, certifique-se de que você tenha os seguintes pré-requisitos instalados em sua máquina:

- [Node.js](https://nodejs.org/en): O Cypress é uma ferramenta baseada em Node.js, então você precisará ter o Node.js instalado.

### Configuração

1. Clone este repositório para a sua máquina local:
```bash
git clone https://github.com/seu-usuario/nome-do-projeto-cypress.git
```

2. Navegue até o diretório do projeto:
```bash
cd nome-do-projeto-cypress
```

3. Instale as dependências do projeto:
```bash
Instale as dependências do projeto:
```

- [Cypress](https://www.cypress.io/)

### Link Site:
- https://devfinance-agilizei.netlify.app/#

### Estrutura do Projeto
A estrutura do projeto está organizada da seguinte maneira:

```lua
/
|-- cypress/
|   |-- downloads/
|   |-- e2e
|       |-- spec.cy.js/
|   |-- fixtures/
|   |   |-- exemplo_fixture.json
|   |-- img/
|   |   |-- cadastroDeEntradas.PNG ...
|   |-- videos/
|   |   |-- spec.cy.js.mp4
|   |-- support/
|   |   |-- commands.js, e2e.js, utils.js
|-- node_modules/
|-- cypress.config.js
|-- package-lock.json
|-- package.json
|-- README.md
```

- **cypress/fixtures:** Esta pasta contém arquivos JSON que podem ser usados como dados de teste nos seus testes.

- **cypress/e2e:** Aqui estará o arquivo principal para execução dos testes.

- **cypress/support:** Você pode adicionar comandos personalizados e funções auxiliares aqui. O arquivo comandos_customizados.js por exemplo. (Neste projeto o arquivo utils.js personaliza a lógica utilizada no projeto)

- **cypress.config.js:** O arquivo de configuração do Cypress, onde você pode definir configurações globais.

### Executando os Testes
```bash
 npx cypress open
```
Isso iniciará a execução dos testes no Cypress. Você verá uma janela do Cypress que permite selecionar os testes a serem executados e acompanhar sua execução.

**Observação**
Usamos o local storage do navegador, assim quando acessarmos a aplicação já haverá valores de entradas e saídas cadastradas.

**Para esta aplicação validamos as seguintes funcionalidades:**

- Botão de cancelamento ao criar nova transação

![Cancelamento de Transações](./cypress/img/cancelarTransacao.PNG)

- Cadastro de entradas

![Cadastro de Entradas](./cypress/img/cadastroDeEntradas.PNG)

- Cadastro de saídas

![Cadastro de Saídas](./cypress/img/cadastroDeSaidas.PNG)

- Verificação se campo de valor aceita somente números

![Validação do Campo de Valor](./cypress/img/campoValor.PNG)

- Remover entradas e saídas

![Remover Entradas e Saídas](./cypress/img/removerEntradasESaidas.PNG)

- Validação do saldo total com base nas transações

![Validação do Saldo Total](./cypress/img/validarSaldos.PNG)

Resultados obtidos no dashboard do Cypress

![Resultados no Dashboard](/Cypress-Testing/cypress/img/ExeceucaoTestes.PNG)

Output obtidos em vídeo

![Execução dos Testes](/cypress/videos/output.mp4)

### Contribuição
Se você deseja contribuir para este projeto, sinta-se à vontade para abrir issues, propor melhorias ou enviar solicitações de pull. Ficarei feliz em receber sua contribuição e aprender mais!