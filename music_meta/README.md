# Music Meta

Experimenting with data about music artists and albums.

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

Look more into topic modelling techniques. It looks like gensim has lda implementation which might be interesting. I am generally interested in modelling topics based on word meaning too. Instead of using direct words, it would be interesting to see if there are approaches to using pre-trained glove vectors instead of words directly for topic modelling.

Another interesting thing to try would be to suggest a list of descriptive words or adjetives which are a seed for important topics and then use glove vetors to only use words close to those concepts. This would reduce the space quite a bit. However, I would assume that artist pages would also include names of people and other bands which are important for topics and might not occur in a pre-trained corpus. (I have been surprised though).

I would also like to run distilbert to obtain embeddings for artist descriptions too. It would fun to have an interface where I write some text about my mood, etc.. and see which artists are closest based on embeddings. The Huggingface API feature-extract should work pretty well for this.