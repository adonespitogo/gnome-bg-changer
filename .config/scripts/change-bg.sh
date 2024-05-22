#!/bin/bash

# Set the directory containing your wallpapers
wallpaper_dir="/home/adonesp/Pictures/Wallpapers"

# Get a list of all image files in the directory
wallpapers=("$wallpaper_dir"/*)

# Select a random wallpaper from the list
random_wallpaper="${wallpapers[RANDOM % ${#wallpapers[@]}]}"

# Check if the selected file exists
while [ ! -f "$random_wallpaper" ]; do
    # If the file doesn't exist, select a new random wallpaper
    random_wallpaper="${wallpapers[RANDOM % ${#wallpapers[@]}]}"
done

# Set the random wallpaper as the background
gsettings set org.gnome.desktop.background picture-uri-dark "file://$random_wallpaper"
