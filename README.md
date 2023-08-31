# Webアプリ

## ディレクトリ構成
```
docker-spring-boot-it-school
│  docker-compose.yml
│  README.md
│
├─mysql # MySQLデータ永続化のためのディレクトリ
│
└─spring-boot # Spring Bootプロジェクト本体
```

## 構築手順

### Spring InitializrでSpring Bootプロジェクト作成
https://start.spring.io/

設定内容は以下
左側
- Project: Gradle - Groovy
- Language: Java
- Spring Boot: 3.1.3
- Packaging: Jar
- Java: 17
- 他は任意かそのまま

右側
Dependencies -> ADDで以下を追加
- Spring Boot DevTools
- Lombok
- Spring Web
- MySQL Driver
- Spring Data JPA
- Mybatis Framework

入力後、GENERATEを押すとzipがダウンロードされます。
zip展開後、spring-bootフォルダに配置します。

### コンテナビルド
```
$ docker-compose up -d
```

### javaのビルドと起動
```
$ docker exec -it java /bin/bash
$ sh gradlew build
$ java -jar build/libs/demo-0.0.1-SNAPSHOT.jar
```
