
このリポジトリは、  
2017/09/02に開催された「あいますえんじにあ Meetup in 京都」で発表した  
「ims@sparqlではじめる R Markdownとgitbookによるレポート生成」のソースコード及び補足説明です。

あいますえんじにあ Meetup in 京都  
2017.09.02 @ 株式会社はてな様 京都オフィス  
https://imas.connpass.com/event/64177/

# 概要

概要はslideshareの資料をご覧ください。

https://www.slideshare.net/takemikami/imssparqlr-markdowngitbook

# システム構成

このリポジトリのコードを動かすためには、  
前提として、以下のようなソフトウェアが必要になります。

## 分析プロセス

- R
- R Studio
- knitr, dplyrなどのパッケージ ... Rのコード実行して、インストールを求められたらinstallして下さい。

## レポート生成のプロセス

分析プロセスに加えて、以下のソフトウェアが必要です。

- docker ... gitbookはdockerで動かすので、dockerが必要です。


# 実行コマンド

## docker build

```
docker build -t gitbookbuilder .
```

## rmd -> md

```
cd report
R --vanilla < rmdcompile.R
```

## md -> html

※docker buildはを実施済みである必要があります。

```
cd report
docker run -i -v `pwd`:/report -t gitbookbuilder gitbook build /report
```

## md -> pdf

※docker buildはを実施済みである必要があります。

```
cd report
docker run -i -v `pwd`:/report -t gitbookbuilder gitbook pdf /report /report/report.pdf
```
