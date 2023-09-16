# Projeto de Automação de Testes em um E-commerce de Testes

Este é um projeto de automação de testes para um e-commerce de Teste usando o Cucumber Framework e a linguagem Ruby. O objetivo deste projeto é garantir que a funcionalidade de login a página de compras esteja funcionando corretamente, identificando e relatando qualquer erro ou comportamento inesperado.

**Link**: https://www.saucedemo.com/

## Pré-requisitos
Certifique-se de que você possui os seguintes pré-requisitos instalados em seu ambiente de desenvolvimento:

- Ruby (versão 2.5 ou superior)
- Cucumber Framework (Gem)
- WebDriver (Selenium WebDriver)
- Gerenciador de dependências (Bundler)
- Navegador da web (Chrome)

## Configuração do Ambiente
Antes de começar a executar os testes, você precisa configurar seu ambiente. Siga estas etapas:

1. Clone este repositório para o seu computador:
```bash
git clone https://github.com/seu-usuario/projeto-automacao-ecommerce.git
```

2. Navegue até o diretório do projeto:
```bash
cd projeto-automacao-ecommerce
```

3. Instale as dependências do projeto:
```bash
bundle install
```

## Estrutura do Projeto
O projeto segue a seguinte estrutura de diretórios:
```csharp
.
├── features/
│   ├── step_definitions/
│   │   └── ... # Arquivos de definição de passos do Cucumber
│   ├── support/
│   │   └── ... # Arquivos de suporte e config: hooks, helpers e env.rb
│   └── ... # Arquivos de especificações em formato Gherkin
├── Gemfile
├── Gemfile.lock
├── README.md
└── ... # Outros arquivos e diretórios necessários
```

## Executando os Testes
Você pode executar os testes usando o seguinte comando:
```bash
cucumber
```

Isso iniciará a execução dos cenários de teste definidos nos arquivos .feature no diretório features. Certifique-se de que seu WebDriver esteja configurado corretamente antes de executar os testes.

## Contribuindo
Se você deseja contribuir para este projeto, sinta-se à vontade para abrir issues, propor melhorias ou enviar solicitações de pull. Ficarei feliz em receber sua contribuição e aprender mais!