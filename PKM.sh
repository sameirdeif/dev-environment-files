
#!/bin/zsh

# Set the paths
OBSIDIAN_PATH="/Users/deif/Library/Mobile\ Documents/iCloud~md~obsidian/Documents"
NOTEPLAN_PATH="/Users/deif/Library/Containers/co.noteplan.NotePlan-setapp/Data/Library/Application\ Support/co.noteplan.NotePlan-setapp"

# Pull the latest changes from the remote repository in Obsidian
cd $OBSIDIAN_PATH
git pull origin main

# Commit and push any changes in Obsidian
git add .
git commit -m "Sync from Obsidian Notes"
git push origin main

# Pull the latest changes from the remote repository in NotePlan
cd $NOTEPLAN_PATH
git pull origin main

# Commit and push any changes in NotePlan
git add .
git commit -m "Sync from NotePlan Notes"
git push origin main

# Pull the latest changes again to ensure everything is up to date

# Pull the latest changes from the remote repository in Obsidian
cd $OBSIDIAN_PATH
git pull origin main

# Pull the latest changes from the remote repository in NotePlan
cd $NOTEPLAN_PATH
git pull origin main
