
# NEES Weather app 

Projeto feito para o cardo de Dev Jr mobile do time do NEES.


## Stack utilizada

**Front-end:** Flutter e Dart

**Pacotes utilizados:** Http para chamadas de API, intl para conversão de datas e Cupertino icons para algum dos ícones utilizados no app.


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

Algumas melhorias que eu poderia sugerir seria que o projeto do Figma pudesse ser mais acessível. Por exemplo, poderíamos ter um ícone representando o horário da noite, a fonte é exclusiva do sistema MacOS, não consegui ver como utilizar dentro do projeto Flutter, além disso, o tamanho das fontes também não consegui ter acesso. Além disso a API faltou alguns dados como previsão hora a hora e por isso modifiquei o widget e coloquei informações disponibilizadas como nascer/pôr do sol, direção do vento e a hora da última atualização das informações no app.


## Aprendizados

O projeto foi bem bacana de se fazer. Os primeiros dois dias eu passei resolvendo problemas com os dados do Model, onde precisei fazer a conversão do parametro date, pois o formato de data retornado não era aceitado pelo Dart/Flutter. 

Além disso, a construção do projeto foi muito boa de se fazer. Os componentes são parecidos e facilitou na agilidade da construção das telas. Caso a API retorne os dados corretamente, é mostrado a tela principal com todas as informações, caso seja retornado algum erro, é mostrada ErrorScreen informando que aconteceu algum problema e com um botão para tentar obter os dados da API. Também tem um CircularProgressIndicator, mas como os dados carregam tão rápido, ele acaba nem aparecendo nas vezes que precisei carregar os dados. De acordo com o parametro "currently" retornado pela API, o background do app muda entre azul claro ou escuro.


## Organização
## Instalação

O projeto pode ser executado fazendo o clone do projeto utilizando o comando:

```
git clone https://github.com/fonsecguilherme/mobile-weather-app
```    
Após o download, basta abrir a pasta nees_weather e executar o projeto normalmente. 

Também é possível fazer o download do arquivo zip, entrar na pasta nees_weahter e executar o projeto. 
