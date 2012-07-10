#!/bin/sh
bundle exec jekyll
rsync -P -r _site/ davidheath.org:~/sites/skintdance.org.uk/current/www/
