# RNA-seq Project

This project will study the potential differences in two brain regions (orbital
frontal cortex and dorsal lateral prefrontal cortex) across 5 different groups
of depressed subjects who attempted or successfully completed suicide.

## Data Pipeline

1. Align reads to the human genome with tophat.
2. Use cufflinks to assemble transcripts.
3. Identify differential expression of genes/transcripts using cuffdiff.
4. Visualize and plot expression results using CummeRbund.

## ToDo

1. Integrate pipeline automation (shell and/or python).
2. Test cuffdiff.
2. Test CummeRbund and other visualization tools with test data.