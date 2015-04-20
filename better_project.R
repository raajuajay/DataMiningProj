library(arules)
library(arulesViz)

#Replace with your path to file, obviously.
data = read.csv("new_data.csv")
data[] = lapply(data, as.factor)
rules = apriori(data, parameter=list(minlen=2, supp=0.1))

#Work on Removing Redundant Rules
#Illustrated here: http://www.rdatamining.com/examples/association-rules
rules.sorted = sort(rules, by="lift")
subset.matrix = is.subset(rules.sorted, rules.sorted)
subset.matrix[lower.tri(subset.matrix, diag=T)] <- NA
redundant = colSums(subset.matrix, na.rm=T) >= 1

rules.pruned = rules.sorted[!redundant]