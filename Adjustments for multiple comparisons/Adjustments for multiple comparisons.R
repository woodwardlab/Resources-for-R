#### adjustments for multiple comparisons 

# Make a vector of your p-values 
# If you ran 4 tests, then you would make a vector like this
pvals <- c(pval1, pval2, pval3, pval4)

# This is the code!
# use this to see more about the fuctions 
help("p.adjust")
p.adjust(pvals, method = "fdr", n = length(pvals))