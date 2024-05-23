This isn't like your typical game of duck, duck, goose. Batch Assigner randomly assigns samples with different types of classifications equally into batches. 
This project started when I had 106 samples to process with different classifications "old_high", "old_low", and "young". The classifications were all out of 
order, which made it difficult to assign the samples into three batches, so that an individual classification had an equal number of samples in each batch. Batch 
Assigner did this all seamlessly and even made the experiment more unbiased by assigning batches with the original sample order randomized. Batch Assigner 
can also be used to reassign teams of people into new teams, among many other applications. It's utility arises from two issues that make traditional batch 
assignment (1, 2, 3, 1, 2, 3...) difficult:
  1. The samples you want to assign batches to are not in the right order to where if you were to assign batches the traditional way, an individual sample
     classification would likely not be equally represented across batches. Imagine you have 7 apples, 7 oranges, and 7 bananas and for some reason you can't figure
     out how to assign them so that you eat an apple, orange, and banana per day of the week. If your fruits were not in the proper order (7x "apple, orange, banana"
     or "7x apple, 7x orange, and 7x banana") and you went down the line Monday, Tuesday, Wednedsay..., there's a chance you would end up eating 2 apples on a
     Tuesday. Total disaster!
  2. The original order of samples is biased and you want to randomly assign batches. Say someone really wants to be on Team 1, so they cut to the front of the line.
     Batch Assigner boots them to a random place in line, so there chances of being on Team 1 are left to fate. 

Use Batch Assigner for all your batch assignment needs.
