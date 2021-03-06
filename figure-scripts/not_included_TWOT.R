
# pulled out of the markdown doc for now.

par(mfrow = c(1,3))

barplot(summary.matrix[2,3:7], ylim = c(0,20), las = 3, main = "FreshTrain references misclassified\nbased on v4 region", col = current.color)

barplot(summary.plot.2[2,3:7], ylim = c(0,20), las = 3, main = "Lake Mendota reads matching multiple\nclassifications exactly", col = current.color)

barplot(num.mismatches[3,3:7], ylim = c(0,20), las = 3, main = "FreshTrain references with\nunknown taxonomy", col = current.color)

x <- cbind(summary.matrix[2,2:7], summary.plot.2[2,2:7], num.mismatches[3,2:7])
colnames(x) <- c("FreshTrain references misclassified based on v4 region", 
                 "Lake Mendota reads matching multiple classifications exactly",
                 "FreshTrain references with unknown taxonomy")
x
write.csv(x = x, file = "~/Desktop/supptable1.csv")
