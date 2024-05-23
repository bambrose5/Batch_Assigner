# User must import a dataset called "samples" consisting of 2 columns, the first one being sample names or
# IDs and the second one being the classifications, ex. healthy and diseased. Classifications must then be
# input below and the number of batches, in this case 3, can be adjusted depending on the sample size.
classifications <- c("healthy", "diseased")
num_batches <- 3

# Creates batch assignments, ex. "1, 2, 3, 1, 2, 3". If a nontraditional, non-numbered batch assignment is required, 
# such as duck, duck, goose or the days of the week, '1:num_batches' can simply be changed to 'c("duck", "duck", "goose")'
# or 'c("Monday", "Tuesday", "Wednesday"...)'.
num_samples <- nrow(samples)
assignments <- rep(1:num_batches, times=num_samples)

#Randomizes sample order for unbiased batch assignment.
random_samples <- sample_n(samples, num_samples, replace = FALSE)
random_samples[,1] <- factor(random_samples[,1], levels = samples[,1])

# Scans samples for classification, ex. healthy, and assigns it with a batch number.
for (i in 1:length(classifications)){
  classification <- classifications[i]
  for (i in 1:num_samples){
    if (random_samples[i, 2]==classification){
      random_samples[i, 3] <- assignments[1]
      assignments <- assignments[-1]
    }
  }
}

# Rearranges samples back to original order and outputs new sample list with batches.
names(random_samples)[3] <- "Batch"
new_samples <- random_samples[order(random_samples[,1]), ]
row.names(new_samples) <- NULL
new_samples






