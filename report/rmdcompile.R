library(knitr)
for(rmd in list.files(getwd(), pattern=".Rmd", recursive=T)) {
  fname = sub("\\.Rmd$", "", rmd)
  md = sub("\\.Rmd$", ".md", rmd)
  opts_chunk$set(base.url = "/", fig.path = paste("./figures/", fname, "-", sep=""))
  knit(input = rmd, output = md)
}

