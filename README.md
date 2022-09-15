# Citrus-Project-   

## HMMER Analysis   
* I downloaded the raw Pro_isomerase HMM file from the Pfam database. https://pfam.xfam.org/. 
* I downloaded the "All Proteins" file for Citrus clementina from the Citrus Genome database. https://www.citrusgenomedb.org/analysis/156. 
* To identify gene members that I was interested in, I used HMMER software and searched Pro_isomerase.hmm against my Cclementina_182 Protein fasta file.   
* The results were output to "Clementina_Proteins.fasta". 
* I gave the results ID's ex: CcCyp1,CcCyp2,... etc for all 46 genes. 
## Showing position of genes on chromosomes   
* In order to find position of genes I retrieved the GFF file "Annotated Genes and Exons" from the Citrus Genome database https://www.citrusgenomedb.org/analysis/156.   
* I searched against the GFF file with my proteins of interest "Clementina_Proteins.fasta" to find the annotated genes of interest to me. 
* I scaled relative the position of the domains on all 9 scaffolds using ggplot2 in R. 
