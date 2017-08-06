# RNA-seq Project
This project will study the potential differences in two brain regions (orbital
frontal cortex and dorsal lateral prefrontal cortex) across 5 different groups
of subjects including depressed subjects who attempted or successfully completed suicide.


### Important Notes
Subjects were not substance abusers or prescribed any drug-related depression treatments.
Some subjects were exposed to alcohol and tobacco.


## Data Pipeline & Analysis
Files will be in fastaq format and should not be decompressed before using them
in the pipeline.

### Pipeline
1. Align reads to the human genome with tophat.
2. Use cufflinks to assemble transcripts.
3. Identify differential expression of genes/transcripts using cuffdiff.
4. Visualize and plot expression results using CummeRbund.

### Analysis

1. Compare groups i.e. A/B/C/D vs E or A/B vs C/D
2. Compare impulsivity rankings
3. Investigate if expression is related to gene families as well as retrieve gene-related pubmed data via [IPA](https://www.qiagenbioinformatics.com/products/ingenuity-pathway-analysis/).
4. Explore any sex differences.

### ToDo
1. Integrate pipeline automation (shell and/or python - blacktie?).
2. Test cuffdiff.
2. Test CummeRbund and other visualization tools (edgeR) with test data.

It may be useful to try the R workflow below which includes edgeR.

```r
source("http://bioconductor.org/workflows.R")
workflowInstall("RNAseq123")
```


## Tools
In order to complete this project, the MCSR will be utilized, the [Tuxedo Suite tools](https://support.illumina.com/help/BS_App_RNASeq_Alignment_OLH_1000000006112/Content/Source/Informatics/Apps/TuxedoSuite_RNASeqTools.htm), and Qiagen's [IPA](https://www.qiagenbioinformatics.com/products/ingenuity-pathway-analysis/) software will be utilized.


## qPCR
In order to provide further validation of the rna-seq results, qPCR may be
performed on 10 selected genes.