
# Flutter News App
## Overview
This Flutter app is powered by the newsapi.org, it provides you with access to a vast array of news articles. With the added convenience of saving your favorite articles locally using Sqflite, you can access your preferred news pieces even when you're offline.

## Features

- **NewsAPI Integration**: The application auto-refresh to fetch fresh content from the API using a suitable
background worker/service strategy. (Isolate) [NewsAPI.org](https://newsapi.org/).

- **Local Article Storage**: Save and retrieve your preferred news articles locally using Sqflite, ensuring that you can access them even without an internet connection.

## Getting Started
1. Clone the repository:
2. Add a `.env` file at the root of the project with the following content
```
NEWSAPIKEY=YOUR_NEWSAPI_ORG_API_KEY
```
4. Navigate to project folder, update packages and run the builder
 ```bash
cd flutter_news_app
flutter pub get
flutter pub run build_runner build
```
5. Navigate to news_data package folder, update packages and run builder
```bash
cd packages/news_data
dart pub get
dart run build_runner build   
```
6. Navigate back to project folder and run the project
```bash
cd ../../
flutter run
```

## Run tests 
1. Navigate to project folder and run test
```bash
flutter test
```
