install.packages("meta")
install.packages("dataMeta")
library(meta)
library(dataMeta)

data(dat.bcg, package = "dataMeta")
head(dat.bcg)

# Conduct meta-analysis
meta_analysis <- metabin(event.e = tpos, n.e = tpos + tneg,
                         event.c = cpos, n.c = cpos + cneg,
                         data = dat.bcg,
                         studlab = paste(author, year),
                         sm = "RR",
                         comb.random = TRUE, comb.fixed = FALSE)

# Print summary
summary(meta_analysis)

# Plot the forest plot
forest(meta_analysis)

# Subgroup analysis by continent
subgroup_analysis <- update(meta_analysis, byvar = alloc)

# Print summary
summary(subgroup_analysis)

# Plot the forest plot with subgroups
forest(subgroup_analysis)

# Funnel plot
funnel(meta_analysis)

# Egger's test for publication bias
egger_test <- metabias(meta_analysis, method.bias = "linreg")
print(egger_test)

# Influence analysis (leave-one-out)
influence_analysis <- metainf(meta_analysis)

# Print summary
summary(influence_analysis)

# Plot the influence analysis
forest(influence_analysis)        
