# gnome-bg-changer
Automatically change your desktop background every 5 minutes with a random image from `~/Pictures/wallpapers` directory.
You can also forcefully change the background by running the script in `.config/scripts/change-bg.sh`.

## Installation

```sh
git clone https://github.com/adonespitogo/gnome-bg-changer.git /tmp/gnome-bg-changer
cp -r /tmp/gnome-bg-changer/* ~/.config/
chmod +x ~/.config/scripts/change-bg.sh
systemctl --user enable --now change-bg.timer
```
