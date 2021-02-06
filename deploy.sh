#!/bin/bash

bundle exec jekyll build 
rsync -avz --delete _site/ -e "ssh -p 5816" --progress  reldigitallab@as.ua.edu:~/www/
