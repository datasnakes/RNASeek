# RNASeek Analysis
This is an easy shiny app to generate plots and tables based on cuffdiff output.

### Analysis

1. Compare groups i.e. A/B/C/D vs E or A/B vs C/D
2. Compare impulsivity rankings
3. Investigate if expression is related to gene families as well as retrieve gene-related pubmed data via [IPA](https://www.qiagenbioinformatics.com/products/ingenuity-pathway-analysis/).
4. Explore any sex differences.

It may be useful to try the R workflow below which includes edgeR.

```r
source("http://bioconductor.org/workflows.R")
workflowInstall("RNAseq123")
```
There's also another workflow worth trying. Check out the [publication](https://f1000research.com/articles/4-1070/v2/pdf) on this workflow.

```r
source("http://bioconductor.org/workflows.R")
workflowInstall("rnaseqGene")
```