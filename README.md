# imas_hack-20170902

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

```
cd report
docker run -i -v `pwd`:/report -t gitbookbuilder gitbook build /report
```

## md -> pdf

```
cd report
docker run -i -v `pwd`:/report -t gitbookbuilder gitbook pdf /report /report/report.pdf
```
