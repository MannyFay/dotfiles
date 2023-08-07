# Polypane

## Live Reload
It is for local development for projects on disk.
Enable on right click > reload button
Reloads the page by changes on the file system
Live reload are stored specific for each tab.
They are paused if you switch to another tab.

CSS and images will be updated without reload.
If there are no matches, PP triggers reloading.

Ignores automatically some files/folders like dotfiles,
dotfolders, node_modules and .git.

You can set specific listeners and ignores (`~/Library/Application Support/Polypane/`) for your own.

If reloading not works, set an delay. Floating point numbers are possible.

## Auto Reload
It is for development on projects that are not stored on the local disk.

