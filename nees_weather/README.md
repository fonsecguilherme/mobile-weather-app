
# NEES Weather app 

Projeto feito para o cardo de Dev Jr mobile do time do NEES.


## Stack utilizada

**Front-end:** Flutter v3.7.0 e Dart v2.19.0

**Pacotes utilizados:** `Http` para chamadas de API, `intl` para conversão de datas e `Cupertino Icons` para algum dos ícones utilizados no app.

## Instalação

O projeto pode ser executado fazendo o clone do projeto utilizando o comando:

```
git clone https://github.com/fonsecguilherme/mobile-weather-app
```    
Após o download, basta abrir a pasta `nees_weather` e executar o projeto normalmente. 

Também é possível fazer o download do arquivo zip, entrar na pasta nees_weahter e executar o projeto. 

## Screenshots

* Tela de dia Android
<p float="left">
  <img src="https://github.com/fonsecguilherme/mobile-weather-app/blob/main/nees_weather/screenshots/androidSC01.jpg" width="350" />
  <img src="https://github.com/fonsecguilherme/mobile-weather-app/blob/main/nees_weather/screenshots/androidSC02.jpg" width="350" />
</p>

* Tela de noite iOS
<p float="left">
  <img src="https://github.com/fonsecguilherme/mobile-weather-app/blob/main/nees_weather/screenshots/iosSC01.png" width="350" />
  <img src="https://github.com/fonsecguilherme/mobile-weather-app/blob/main/nees_weather/screenshots/iosSC02.png" width="350" />
</p>

* Tela de erro
<p float="left">
  <img src="https://github.com/fonsecguilherme/mobile-weather-app/blob/main/nees_weather/screenshots/errorSC.png" width="350" />
</p>

* Gifs
 
 <p float="left">
  <img src="https://github.com/fonsecguilherme/mobile-weather-app/blob/main/nees_weather/screenshots/gif01.gif" width="350" />
  <img src="https://github.com/fonsecguilherme/mobile-weather-app/blob/main/nees_weather/screenshots/gif02.gif" width="350" />
</p>


## Melhorias

Algumas melhorias que eu poderia sugerir seria que o projeto do Figma pudesse ser mais acessível. Por exemplo, poderíamos ter um ícone representando o horário da noite, a fonte é exclusiva do sistema MacOS, não consegui ver como utilizar dentro do projeto Flutter, além disso, o tamanho das fontes também não consegui ter acesso. Além disso a API faltaram alguns dados como previsão hora a hora e por isso modifiquei o widget e coloquei informações disponibilizadas como nascer/pôr do sol, direção do vento e a hora da última atualização das informações no app.

Trabalhando com uma API com uma documentação e a lista dos possíveis retornos, eu usaria uma `flush bar` para mostrar uma mensagem personalizada ao usuário de qual problema aconteceu.


## Aprendizados

O projeto foi bem bacana de se fazer. Os primeiros dois dias eu passei resolvendo problemas com os dados do Model, onde precisei fazer a conversão do parametro date, pois o formato de data retornado não era aceitado pelo Dart/Flutter. 

Além disso, a construção do projeto foi muito boa de se fazer. Os componentes são parecidos e facilitou na agilidade da construção das telas. Caso a API retorne os dados corretamente, é mostrado a tela principal com todas as informações, caso seja retornado algum erro, é mostrada `error_screen` informando que aconteceu algum problema e com um botão para tentar obter os dados da API. De acordo com o parametro "currently" retornado pela API, o background do app muda entre azul claro ou escuro.


## Organização
Separei o programa nas seguintes pastas.

* Commons: Tem as strings que não mudam dentro do app e também o arquivo de cores que são usadas nas fontes, background e etc

* Data: Como o app possui apenas um modelo, deixei tanto o arquivo com a chamada de API quanto o Model dentro dessa pasta, porém se tivessem mais chamadas e arquivos eu dividiria os arquivos em controllers e models para que a organização ficasse melhor.

* Helpers: Nessa pasta eu deixei funções que são usadas dentro do app, como TextStyle, conversão de datas e a conversão dos graus da posição de onde o vento está soprando para uma string com o nome da direção em si.

* Views: Na pasta views estão as pastas Widgets e Screens. Em screens são as telas em si que o app possui e na pasta widgets estão widgets menores da que poderiam ser re-aproveitados dentro do app caso necessário

* O arquivo `home_screen` direciona o app para a tela de acordo com o retorno vindo da API, no caso de sucesso é direcionado para `data_screen`, caso seja retornado algum erro, é mostrado a tela genérica `error_screen` e por último a `loading_screen` é mostrada enquanto o app espera o retorno da API.