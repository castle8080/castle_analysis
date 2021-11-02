# castle_analysis
This is my general purpose project for analysis. I am using this for smaller data analysis projects. If projects become larger they should move to their own repo.

## Projects

### us_deaths
In this project I was analyzing the trend in deaths in general in the US before and during the Covid pandemic. This was motivied by debates with family members if Covid cases were being reported correctly or not. My hypothesis was that you if Covid is real you should see a general increase in overall deaths for any reason. This would get around the idea that people are reporting cases which aren't actually real cases. A few weeks after I did this I saw that other researches had done the same thing. And yes, it did appear that Covid is real. (Not that the data I showed convinced my relatives anyway.)

### elections
I was curious about gender and elections. My wife and I debated quite often if people were more negative about Hillary Clinton because of her gender. I was thinking that I should see that there should be a difference in districts typicaly democrat to republican voting ratios dependend on the gender of the candidates. Gender of candidates wasn't in the datasets I pulled, so I tried using a project sex-machine which gives probabilitis of gender based on first name. I didn't find significant correlation yet, but the methods I used need to be improved. I believe I came up with typical ratios by district going back through all voting years, I think that should probably be a rolling window though. I may pick this up again later.

### music_meta
This is a project to help me find music I might want to listen to. It is pulling data about albums and artists from Wikipedia and creating embeddings using doc2vec from the articles. These embeddings can then be used to find artists/albums which are similar to others. This can also be used for clustering and creating a hierarchical music grouping tree. The hierarchcal tree could be used to find music types and styles someone might not typically listen to.
