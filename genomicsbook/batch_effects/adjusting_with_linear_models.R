######################

library(tidyverse)
library(genefilter)
# correcting for confounding with linear models

# exercises

sex = sampleInfo$group
month = factor( format(sampleInfo$date,"%m"))
table( sampleInfo$group, month)

expr_groups<-data.frame(geneExpression)
names(expr_groups) <- sex
rownames(expr_groups) <- geneAnnotation$SYMBOL

rowttests(geneExpression, fac = factor(sex))
