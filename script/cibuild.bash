#!/usr/bin/env bash

# Build the jeyll website
echo "Executing -> bundle exec jekyll build"
bundle exec jekyll build
if [ $? -ne 0 ]
then
	echo "The jekyll build failed! Exiting"
fi

# Run a html test check
echo "Executing -> bundle exec htmlproofer ./_site/ --url-ignore \"/#/\""
bundle exec htmlproofer ./_site/ --url-ignore "/#/"
if [ $? -ne 0 ]
then
        echo "The HTML Check failed! Exiting"
fi

