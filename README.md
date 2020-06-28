# BLASH

## Usage

Edit the config.sh to set your name and the site name

Create your post in the contents/posts directory using the file naming convention:  
  ``YYYY-MM-DD-file-name.md``

Set your values in the first lines of the post like so:

  [//]: # (title=Inane Diatribe)
  [//]: # (tags=whatever,you,want,to,tag,it,with)
  
The ``[//]: # (`` causes [pandoc](https://pandoc.org/MANUAL.html#pandocs-markdown) to ignore those lines when interpreting the markdown. Found this tip on Alvin Alexanders blog, [thanks mate](https://alvinalexander.com/technology/markdown-comments-syntax-not-in-generated-output/).

generate your static site by running ``./publish.sh`` (don't forget to chmod +x it first)

Nothing is really working as planned yet, but it's on some kind of track.


## Credits

Bash static blog generator forked from [Frabert's BLASH](https://github.com/frabert/BLASH)  
Not to be confused with [Flyounet's blash](https://github.com/Flyounet/blash)  


## Development Environment Notes
 - run static server from /publish directory:  
    python -m SimpleHTTPServer 8000
