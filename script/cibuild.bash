#!/usr/bin/env bash

# Build the jeyll website
bundle exec jekyll build

# Run a html test check
bundle exec htmlproofer ./_site/ --url-ignore "/#/"
