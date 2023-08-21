*** Settings ***

Documentation  Teste realizado na pratica do uso do FrameWork Robot em arquivo unico

Library             SeleniumLibrary
Library             OperatingSystem
Library             DebugLibrary

Test Setup          Abrir o navegador
Test Teardown       Fechar o navegador



*** Variables ***
&{VARTEST}
...                primeiro=
...                botaoLog= xpath://*[@id="login-button"]
...                campoPass= xpath://*[@id="password"]
...                campoLogin= xpath://*[@id="user-name"]
...                clientePass= secret_sauce
...                clienteUser= standard_user
...                acessoSite= xpath://*[@id="root"]/div/div[1]
...                loginSucesso= xpath://*[@id="header_container"]/div[2]/span
...                url= https://www.saucedemo.com/
...                erroSenha= xpath://*[@id="login_button_container"]/div/form/div[3]/h3
...                erroLogin= xpath://*[@id="login_button_container"]/div/form/div[3]/h3

*** Keywords ***    
## Test Setup ##
Abrir o navegador 
   Open Browser       ${VARTEST.url}    browser=edge 
   Maximize Browser Window

## Test Teardown ##
Fechar o navegador
   Close Browser

## Caso 1 ##
Dado que o cliente acesse o site
   Wait Until Element Is Visible   ${VARTEST.acessoSite}  30

Quando preencher os dados de login e senha
   Input Text   ${VARTEST.campoLogin}  standard_user
   Input Text   ${VARTEST.campoPass}  secret_sauce
   
E clicar no botão login
   Click Element  ${VARTEST.botaoLog}  

Então o usuário deve acessar o sistema com sucesso
   Wait Until Element Is Visible    ${VARTEST.loginSucesso}

E tirar print 1
  Sleep    3s
  Capture Page Screenshot

## Caso 2 ##
Dado que o cliente acesse o site 2
   Wait Until Element Is Visible   ${VARTEST.acessoSite}  30

Quando preencher o dado de login e não colocar a senha
   Input Text   ${VARTEST.campoLogin}  standard_user
    
E clicar no botão login 2
   Click Element  ${VARTEST.botaoLog}

Então o usuário deve ver a messagem de requisição da senha
   Wait Until Element Is Visible   ${VARTEST.erroSenha}

E tirar print 2
  Sleep    3s
  Capture Page Screenshot

## Caso 3 ##
Dado que o cliente acesse o site 3
   Wait Until Element Is Visible   ${VARTEST.acessoSite}  30
E clicar no botão login 3
   Click Element  ${VARTEST.botaoLog}
Então o usuário deve ver a messagem de requisição do login
   Wait Until Element Is Visible   ${VARTEST.erroLogin}
E tirar print 3
  Sleep    3s
  Capture Page Screenshot
   
    
   

*** Test Cases ***
Caso de teste 1: logar no site com sucesso
   [Tags]    tc1
   Dado que o cliente acesse o site
   Quando preencher os dados de login e senha
   E clicar no botão login
   Então o usuário deve acessar o sistema com sucesso
   E tirar print 1

Caso de teste 2: logar no site com insucesso
   [Tags]    tc2
   Dado que o cliente acesse o site 2
   Quando preencher o dado de login e não colocar a senha
   E clicar no botão login 2
   Então o usuário deve ver a messagem de requisição da senha
   E tirar print 2

Caso de teste 3: logar no site com insucesso sem dados algum
   [Tags]    tc3
   Dado que o cliente acesse o site 3
   E clicar no botão login 3
   Então o usuário deve ver a messagem de requisição do login
   E tirar print 3


   







  



