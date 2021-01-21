# Brasil Paralelo App

Olá, para criar esse projeto utilizei como base o Modular + Mobx.

<p align="center">
  <img src="https://github.com/muriloe/brasil_paralelo/blob/main/extracontent/home.png?raw=true" width="250" >
  <img src="https://github.com/muriloe/brasil_paralelo/blob/main/extracontent/exclusivetab.png?raw=true" width="250" >
</p>

## Interface/ usabilidade

Inpirei o layout em cores semelhantes das do site, e uma interface baseada em conteúdo, semelhante a Netflix.

<p align="center">
  <img src="https://github.com/muriloe/brasil_paralelo/blob/main/extracontent/figma.png?raw=true" width="250" >

</p>

Confira o protótipo que fiz:

https://www.figma.com/file/DjpK8Qq5LZIHvK0zrs8BLv/Brasil-Paralelo?node-id=4%3A1155

Como a plataforma tem conteúdo gratuito, não coloquei o login com necessário, ele é um caminho alternativo, portanto, existe a possibilidade do usuário conheçer os planos, sem pedir inputs chatos, melhorando assim o engajamento.

<p align="center">
  <img src="https://github.com/muriloe/brasil_paralelo/blob/main/extracontent/detail_free.png?raw=true" width="250" >
  <img src="https://github.com/muriloe/brasil_paralelo/blob/main/extracontent/exclusivecontent.png?raw=true" width="250" >
</p>

## Como rodar o projeto

O mobx utiliza o codegen, portanto é necessário executar os seguintes passos:

- flutter pub get
- flutter clean
- flutter pub run build_runner

Para rodar os testes:

- flutter test

## Organização do projeto

Organizei o projeto de forma a separar os estilos de navegação, temos a bottomtab, e na página home, temos as tabs para cada tipo de usuário. Elas estão organizadas cada um em seu respectivo modulos.

Costumo separar os widget comuns, models, enum, repository e service na pasta Shared.

Também separei as responsabilidades, dessa forma, as páginas ficam responsáveis em agrupar os widgets, sua controller métodos internos, que chama repository e assim por diante.

<p align="center">
  <img src="https://github.com/muriloe/brasil_paralelo/blob/main/extracontent/search.png?raw=true" width="250" >
  <img src="https://github.com/muriloe/brasil_paralelo/blob/main/extracontent/profile.png?raw=true" width="250" >
</p>

## Mock

Para simular um ambiente real, utilizei um serviço de mock, ex:

https://run.mocky.io/v3/c1a4cf71-591f-49ba-bd64-46d93f0c6a32

Se quiser você pode seguir esse modelo e adicionar mais coisas na API. É só gerar um mock e trocar a url na app_repository.dart

```
[{  "image_url":"https://i.ytimg.com/vi/aYAMElVUSMg/maxresdefault.jpg",
    "content_type": "FREE",
    "link":"https://www.youtube.com/watch?v=2cRVPUEc0d4&ab_channel=BrasilParalelo",
    "title": "Fim das nações - EP01"},
{   "image_url":"https://i.ytimg.com/vi/sPjDv2y_f9M/maxresdefault.jpg",
    "content_type": "PREMIUM",
    "link":"https://www.youtube.com/watch?v=sPjDv2y_f9M&ab_channel=BrasilParalelo",
    "title": "As grandes minorias"},
{   "image_url":"https://i1.sndcdn.com/artworks-000678774832-seih0n-t500x500.jpg",
    "content_type": "PATRIOTA",
    "link":"https://www.youtube.com/watch?v=2cRVPUEc0d4&ab_channel=BrasilParalelo",
    "title": "Cultura paralela"}]
```

## APK

https://github.com/muriloe/brasil_paralelo/blob/main/extracontent/app-release.apk

## Navegação completa

<p align="center">
  <img src="https://github.com/muriloe/brasil_paralelo/blob/main/extracontent/BPRESUME.gif" width="180" >
</p>

![](https://github.com/muriloe/brasil_paralelo/blob/main/extracontent/BPRESUME.gif)
https://github.com/muriloe/brasil_paralelo/blob/main/extracontent/BPRESUME.gif
