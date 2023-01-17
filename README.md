# AR Card game Manager 

This repository is a [Strapi](https://github.com/strapi/strapi) application to create 
card decks which are deployed on [AR Card game](https://github.com/poqudrof/ARCardGame) applications. 
Please review the game repository for more information about the project.

### Structure 

* The [Anrdoid](https://github.com/poqudrof/ARCardGame) repository enables the creation of an Android application. 
* The Manager repository (this one) is the backend to create augmentations. 
* The [frontend](https://github.com/poqudrof/ARCardGameWebsite) repository contains a website to obtain user and legal information about the application and download it.

## How to build 

Strapi applications are built on NodeJS : 

``` bash
# Install
yarn install
yarn start
```

Please use NodeJS version 14.x, and refer to the [Strapi documentation](https://docs.strapi.io/developer-docs/latest/getting-started/quick-start.html). 

## How to export data for the Android app 

You can obtain a JSON file directly from the app: 

* all cards: http://localhost:1337/cards?_limit=3000

## AR Card structure 

The AR cards structure is as follows. 

1. The application is built for 1 deck. 
2. Each card belong to a deck. 
3. The cards have a “card role“ which represents its category. 
4. The Lines belong to a card, they represent the textual contents of the cards.
5. Cards can have additional media, currently: Answer, Tip, Illustration (image), preview (image), voiceover (mp3).  

In order to identify a card using the app. The full deck has to be loaded in the app. 
