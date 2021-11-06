# Music Meta

Experimenting with data about music artists and albums. I am looking to use wikipedia text about albums and artists to help reccomend albums I might want to listen to. I am interested in finding albums or artists I might not normally listen to but will still like. It seems like many algorithms used on popular sites give me albums/songs which are too similar. I would like find an algorithm that expands the range of music I listen to.

## CONFIG

Some of the notebooks need configuration to do operations such as downloading info from you tube. A file var/config.json should be created.

Template for var/config.json

```
{
    "youtube": {
        "base-url": "https://www.googleapis.com/youtube/v3",
        "api-key": "<YOUR YOUTUBE API KEY>"
    }
}
```


## Wikipedia Extract

The first stage of this work is going through data available on Wikipedia about albums.

### wikipedia_album_info_Extract_year_lists

This notebook goes through wikipedia pages for album year lists and parses out albums from the pages.

### wikipedia_album_detail_download

Downloads and caches the album detail pages.

### wikipedia_album_embedding

Looks at creating embeddings or vector representations of album description text and tries clustering and finding near neighbors to see if album detail pages contain information to link between albums in interesting ways. The result seems to be that the clustering mostly puts together albums from the same artist.

### wikipedia_artist_detail_download

Downloads artist pages. Artist pages appear to have more information about a band than album pages. I also noticed that the year list pages on wikipedia are not really comprehensive. More albums can be extracted later from the artist detail.

### General Thoughts Notes/Todo

#### 2021/10/24

Look more into topic modelling techniques. It looks like gensim has lda implementation which might be interesting. I am generally interested in modelling topics based on word meaning too. Instead of using direct words, it would be interesting to see if there are approaches to using pre-trained glove vectors instead of words directly for topic modelling.

Another interesting thing to try would be to suggest a list of descriptive words or adjetives which are a seed for important topics and then use glove vetors to only use words close to those concepts. This would reduce the space quite a bit. However, I would assume that artist pages would also include names of people and other bands which are important for topics and might not occur in a pre-trained corpus. (I have been surprised though).

I would also like to run distilbert to obtain embeddings for artist descriptions too. It would fun to have an interface where I write some text about my mood, etc.. and see which artists are closest based on embeddings. The Huggingface API feature-extract should work pretty well for this.

#### 2021/10/30

The initial pass of clustering using KMeans over TFIDF of album detail pages was not very exciting. I ended up with mostly 1 big cluster and several small ones. It was more interesting to find the 10 closest albums to a reference album not by the same artist. I want to try out agglomerative clustering next, but I also think that the text in wikipedia about albums is generally less informative than text written about artists. Clustering on artists might be better.

#### 2021/10/31

I created embeddings for artists using doc2vec. The embeddings have seemed more interesting than TFIDF embeddings for albums. Finding similar artists to other artists seemed to work pretty well. I tested it with my cousin and daughter last night a bit. I also tried clustering using agglomerative clustering and began sampling from clusters of music groups I don't listen to as often but look interesting.

I am really liking agglomerative clustering and I the KDTree class in sklearn is very nice. Previously I had been doing similarity calculations using pairwise comparisons and sorting myself. I really like KDTree it seems fast. I believe it is similar to an algorithm I wrote for 3D game programming to help calculate object collisions.

I would like to look more into the clusters and see if I can come up with ways to describe them better. For the first pass, I took the most common genres albums were tagged with in artist clusters. I would like to get words from the detail text instead.

TODO: Check out the doc2vec model and see what it exposes. Perhaps it exposes the vocabulary?