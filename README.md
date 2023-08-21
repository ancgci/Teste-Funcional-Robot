# Teste Funcional Robot

![Badge em Desenvolvimento](http://img.shields.io/static/v1?label=STATUS&message=%20CONCLUIDO&color=GREEN&style=for-the-badge)

[O Teste Funcional com RobotFrameWork](https://github.com/ancgci/Teste-Funcional-Robot) fora criado na prática didática após conclusão do [Prime Hero Academy](https://primelearning.mobiliza.com.br/) organizado pela empresa [PrimeControl](https://www.primecontrol.com.br/).

## Apresentação

O teste funcional se refere a um tipo de teste realizado para verificar se um sistema ou aplicativo está funcionando corretamente em termos de funcionalidade. O objetivo é garantir que todas as funcionalidades do sistema estejam operando de acordo com os requisitos e especificações definidos.

Os testes funcionais em estágio de Qualidade de Software são realizados para validar se o sistema está executando as tarefas esperadas e se os resultados estão corretos. Eles são projetados para simular as ações do usuário final e verificar se o sistema responde corretamente a essas ações.

Assim apresentamos aqui o teste funcional com o uso do framework Robot em BDD. Serão tratados os seguintes casos de testes:

- Login com sucesso
- Tentativa de login só com "username", assim esperamos o erro ao tentar logar
- Tentativa de login sem usuario e sem senha. 

## IDE utilizada

Optamos pelo uso da IDE do Visual Code para trabalharmos a codificação.

## Linguagem

O framework ROBOT é desenvolvido em Python atualmente.

## Bibliotécas

- SeleniumLibrary , OperatingSystem e DebugLibrary

## Configurando

-Realize a instalação do Python
-Realize a instalação do "Driver" conforme seu navegador, caso seja o [Chrome]( https://chromedriver.chromium.org/downloads).
Pessolamente utilizei o EDGE da Microsoft assim tive que baixar o arguivo do site da EDGE. Conforme o seu navegador de uso se faz necessário baixar o Drive respetivo. 
-Descompacte o aquivo e coloque na pasta System32
-Faça o teste no terminal de preferência para confirmar a ação realizada "chromedriver -v" (chrome) 
-Faça a instalação do RobotWebDriver "pip install robotframework"
-Faça a instalação do Selenium Webdriver "pip install robotframework-seleniumlibrary"

## Esquema utilizado no Robot

-Settings
-Varibles
-Test Case
-Keywords

## Sitio Testado

- https://www.saucedemo.com/


## Test Case 1 - Login com sucesso

![1](https://github.com/ancgci/Teste-Funcional-Robot/blob/main/imagens/testecase1.png)

## Test Case 2 - Tentativa de login só com "username", assim esperamos o erro ao tentar logar

![2](https://github.com/ancgci/Teste-Funcional-Robot/blob/main/imagens/testecase2.png)

## Test Case 3 - Tentativa de login sem usuario e sem senha.

![3](https://github.com/ancgci/Teste-Funcional-Robot/blob/main/imagens/testecase3.png)



## License

MIT


