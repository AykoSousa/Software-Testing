# Projeto de Automação de Cadastro no Walkdog

## Descrição

Este projeto consiste em um conjunto de testes automatizados para verificar o processo de cadastro na plataforma Walkdog, com foco em se tornar um Dog Walker. A automação é realizada utilizando a ferramenta Robot Framework, que permite a execução de testes de forma eficiente e a geração de relatórios detalhados.

## Pré-requisitos
Para executar esse projeto é necessário ter instalado:

- [Python (versão 3.x recomendada)](https://www.python.org/downloads/)
- [Robot Framework](https://robotframework.org/)
- [SeleniumLibrary](https://robotframework.org/SeleniumLibrary/SeleniumLibrary.html)
- Um navegador web (por exemplo, Chrome ou Firefox)
- [WebDriver](https://sites.google.com/chromium.org/driver/)/[GeckoDriver](https://github.com/mozilla/geckodriver) (para interação com o navegador)

## Configuração

1. Clone este repositório em sua máquina:
```bash
    git clone https://github.com/AykoSousa/Software-Testing/RobotFramework.git
```

2. Navegue até o diretório do projeto:
```bash
    cd RobotFramework/walkdog
```

3. Baixe o WebDriver apropriado para o seu navegador e coloque-o no seu PATH

## Execução dos Testes

Para executar os testes, utilize o seguinte comando:

```bash
robot -d ./logs cadastro.robot
```

Isso executará todos os testes na raiz do projeto e gerará relatórios detalhados na pasta logs/.

## Estrutura do Projeto

raiz/: Contém os casos de teste escritos em Robot Framework.
Resources/: Armazena recursos como arquivos de configuração, bibliotecas personalizadas ou variáveis globais.
logs/: Aqui serão gerados os relatórios de execução dos testes.

### Contribuição

Sinta-se à vontade para contribuir com melhorias, correções de bugs ou novos testes automatizados.