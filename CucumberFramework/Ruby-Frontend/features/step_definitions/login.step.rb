Dado('que o usuario queira logar no site') do    
    login.load
  end
  
  Quando('ele digitar as credenciais validas') do  
    login.userLogin(CREDENTIAL[:user][:email], CREDENTIAL[:user][:password])
  end
  
  Entao('deve acessar a página de produtos') do    
    home.checkLoginSuccessful
  end