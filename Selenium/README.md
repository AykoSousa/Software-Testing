# Validação da funcionalidade de login com selenium IDE

## Ferramentas:
- [Selenium IDE](https://www.selenium.dev/selenium-ide/)
- [Windows Terminal](https://apps.microsoft.com/store/detail/windows-terminal/9N0DX20HK701?hl=pt-br&gl=br&icid=CNavAppsWindowsApps)

## Site Testado
- https://opensource-demo.orangehrmlive.com/web/index.php/auth/login

## Descrição
Neste caso de teste utilizo a ferramenta selenium IDE para validar a funcionalidade de login no site, na qual verifico se terei sucesso ao logar com usuário e senha válidos, ou se terei impedimentos quando utilizo um login inválido ou até mesmo deixando campos de e-mail ou senha vázios.

## Execução

### Login Válido
O próprio site fornece as credenciais de usuário e senha para acessarmos o site. Ao tentar fazer o login com o uso dessas credenciais vemos todos os testes passando.
![Login válido](./images/01_login_valido.png)
Para realmente validar se estou logado no site, utilizo como referência o botão de logout que está localizado no dropdown do perfil.
![Dropdown User](./images/dropdownUser.PNG)
Como visto acima, todos os testes passaram.