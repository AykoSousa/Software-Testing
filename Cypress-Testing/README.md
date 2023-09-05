# Testando a Aplicação Devfinance

## Descrição:
O projeto consiste em uma aplicação web que permite o dev ter seu controle financeiro através de cadastro de entradas e saídas.
Esse projeto foi desenvolvido pelo professor Mayk Brito da Rocketseat, mas para validar os testes tive como base a playlist de [Cypress](https://www.youtube.com/playlist?list=PLnUo-Rbc3jjztMO4K8b-px4NE-630VNKY) do canal [Agilizei](https://www.youtube.com/@Agilizei).

### Ferramenta:
- [Cypress](https://www.cypress.io/)

### Link Site:
- https://devfinance-agilizei.netlify.app/#

### Rodar o projeto
```bash
 npx cypress open
```
Para esta aplicação validei as seguintes funcionalidades:
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