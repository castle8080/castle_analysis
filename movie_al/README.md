# Movie AL (Active Learning)

This is a project I am using to explore use of active learning. The idea is to use active learning to find movies I want to watch based on the reviews which I label.

## Process

The following process was used to build a model which predicts if a review should compell me to watch a movie.

1. Movie reviews are taken from: https://ai.stanford.edu/~amaas/data/sentiment/
2. Movie meta data is pulled from: https://datasets.imdbws.com
3. Reviews are processed and turned into vector representations using doc2vec.
4. Active learning is used to get labels from me for reviews to see if the review would make me want to watch a movie. After each sample, the model is taught from the new results. The next label requested uses sampling from the highest entropy.

Using the trained model, predict the probability that a reivew is compelling. Order from highest to lowest probability, and show the top ones I did not explictly label.

