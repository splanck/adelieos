#!/bin/bash

sudo chown -R $USER:$USER *
git add -A
read -p "Commit description: " desc
git commit -m "$desc"
git push
