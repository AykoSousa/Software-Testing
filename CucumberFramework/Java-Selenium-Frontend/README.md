# Projeto de Automação de Testes em um E-commerce

Este é um projeto de automação de testes para um e-commerce de Teste usando o Cucumber Framework e a linguagem Java. O objetivo deste projeto é garantir que a funcionalidade de login a página de compras esteja funcionando corretamente, identificando e relatando qualquer erro ou comportamento inesperado.

**Link:** https://www.saucedemo.com/.

## Pré-requisitos
Certifique-se de ter as seguintes ferramentas e recursos instalados antes de executar os testes:

- Java: É necessário ter o Java instalado no seu sistema. Você pode baixá-lo em java.com.
- Maven: O Maven é usado para gerenciar as dependências do projeto. Você pode baixá-lo em [Maven Apache](https://maven.apache.org/download.cgi).

## Configuração do Ambiente

1. Clone este repositório em sua máquina local:
```bash
git clone https://github.com/seu-usuario/nome-do-repositorio.git
```

2. Navegue até o diretório do projeto:
```bash
cd nome-do-repositorio
```

3. Instale as dependências do projeto usando o Maven:
```bash
mvn clean install
```

## Estrutura do Projeto
A estrutura do projeto está organizada da seguinte forma:

src/main/java: Contém os arquivos de código-fonte Java.
src/test/java: Contém os arquivos de teste Cucumber.
src/test/resources: Contém os arquivos de recursos do Cucumber, como arquivos de características e arquivos de configuração.
target: Contém os resultados da compilação, incluindo relatórios de testes

## Executando os Testes
Você pode executar os testes de automação usando o seguinte comando Maven:
```bash
mvn test
```

Este comando iniciará a execução dos testes definidos no Cucumber Framework e relatórios serão gerados na pasta target/HtmlReports.HTML. Você pode abrir o arquivo HTML de relatório para ver os resultados dos testes.

## Contribuindo
Se você deseja contribuir para este projeto, sinta-se à vontade para abrir issues, propor melhorias ou enviar solicitações de pull. Ficarei feliz em receber sua contribuição e aprender mais!
