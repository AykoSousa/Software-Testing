Funcionalidade: Cadastro de Dog Walkers

    Sendo um visitante do site que curte cuidar de pets
    Posso fazer meu cadastro como Dog Walker
    Para que eu possa ter uma nova fonte de renda com essas atividades


Modelagem de Dados:

| Nome                              Seletores                             Estado         Obrigatório?
---------------------------------|------------------------------------|---------------|----------------|
|Nome completo	                 | input[name="name"]                 | Habilitado    | Sim
|E-mail                          | input[name="email"]                | Habilitado    | Sim
|CPF                             | input[name="cpf"]                  | Habilitado    | Sim
|CEP	                         | input[name="cep"]                  | Habilitado    | Sim
|Rua	                         | input[name="addressStreet"]        | Desabilitado  | Sim
|Número	                         | input[name="addressNumber"]        | Habilitado    | Sim
|Complemento	                 | input[name="addressDetails"]       | Habilitado    | Não
|Bairro	                         | input[name="addressDistrict"]      | Desabilitado  | Sim
|Cidade/UF	                     | input[name="addressCityUf"]        | Desabilitado  | Sim
|Upload do documento             | input[type="file"]                 | Habilitado    | Sim


Cenários de aceite:

Contexto:
    Dado que visito o site Walkdog
    E que desejo me tornar Dog Walker

Cenário: Cadastro de dog walker com sucesso

    Quando preencho o formulário de cadastro com meus dados pessoais
    Então devo ver uma mensagem de sucesso informando que meu cadastro foi para análise

Cenário: CPF incorreto

    Quando preencho o formulário informando um cpf incorreto
    Então devo ver uma mensagem de alerta com o seguinte texto: "CPF inválido"

Cenário: Email incorreto

    Quando preencho o formulário informando um email incorreto
    Então devo ver uma mensagem de alerta com o seguinte texto: "Informe um email válido"

Cenário: Campos obrigatórios

    Quando submeto o formulário sem preencher nenhum dos campos
    Então devo ver mensagens de alerta avisando que esses campos são obrigatórios