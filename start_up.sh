#!/bin/bash

#docker-compose -f docker-compose-prod.yml up  
docker build -t my-devlopr-jekyll-blog .
docker run -d -p 4000:4000 -it --volume="$PWD:/srv/jekyll" --name "my_blog" my-devlopr-jekyll-blog:latest jekyll serve