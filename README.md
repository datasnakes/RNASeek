# RNASeek
A shiny app to perform simple and multivariate differential analysis using deseq2 and create interactive visuzalizations using a [`htseq-count-cluster`](https://github.com/datasnakes/htseq-count-cluster) merged counts table or merge counts table from [htseq](https://github.com/simon-anders/htseq)'s `htseq-count` script and a matching annotation table.


## Running the RNASeek app locally

### Via the runGitHub command
```r
library(shiny)
shiny::runGitHub('RNASeek', 'datasnakes')
```

### Via cloning the repository
1. Clone or download the git repository.
```bash
git clone https://github.com/datasnakes/RNASeek.git
```

2. Open RStudio or Rconsole and type:
```r
library(shiny)
runApp('path/to/RNASeek')
```
## Dependencies
The dependencies are `shiny`, `shinythemes`, and  `DESeq2`. Ensure you have the latest versions installed and the latest version of R.


### Update to the latest version of DESeq2

```r
## try http:// if https:// URLs are not supported
source("https://bioconductor.org/biocLite.R")
biocLite("DESeq2")
```

## Maintainers
Shaurita Hutchins | [@sdhutchins](https://github.com/sdhutchins) | [✉](mailto:sdhutchins@outlook.com)

Rob Gilmore | [@grabear](https://github.com/grabear) | [✉](mailto:robgilmore127@gmail.com)

Please feel free to [open an issue](https://github.com/datasnakes/RNASeek/issues/new) if you have a question, feedback, or problem using this app.
