#!/bin/bash

bundle exec jekyll build 
rsync -avz --delete _site/ -e "ssh -p 5816" --progress  datalabs@betatesting.as.ua.edu:~/www/
