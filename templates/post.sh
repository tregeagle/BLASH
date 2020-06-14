#!/usr/bin/env bash

set -o errexit  # stop on error
set -o pipefail # stop on stupid 

# DEBUGGING:
# set -o xtrace 

year=${date:0:4}
date_string=$(date -d "$date" "+%B %d, %Y")

taglist=""
for tag in "${tags[@]}"
do
  tag=$(_htmlEscape "$tag")
  taglist+="<li><a class=\"tag\" href=\"$base_url/posts/tags/$tag.html\">$tag</a></li>"
done

source="<!DOCTYPE html>
<html lang=\"en\">
<head>
  <meta charset=\"UTF-8\">
  <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">
  <meta http-equiv=\"X-UA-Compatible\" content=\"ie=edge\">
  <title>$blog_title</title>
  <link href=\"/assets/css/style.css\" rel=\"stylesheet\" type=\"text/css\">
</head>
<body>
  <header id=\"header\">
    <h1><a href=\"/\">
      <span id=\"blog-title\">$blog_title</span>
    </a></h1>
  </header>
   
  <main>
    <article>
     <h2>$title</h2>
     <time datetime=\"$date\">$date_string</time>
     $content
     <small>By $author</small>
     <ul class=\"tags\">$taglist</ul>
    </article>
  </main>

 <ul>$indexlist</ul>

  <footer>
    <small>Contents © $year, $author</small>
  </footer>
</body>
</html>"
