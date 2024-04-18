CONKY_DIR="$HOME/.conky"
CONKY_CONF="/etc/conky/conky.conf"
DESKTOP_CONKY_SCRIPT="/etc/conky/conky.desktop"
AUTO_START_SCRIPT="$HOME/.config/autostart/"
# Check if ~/.conky directory exists, if not, create it
if [ ! -d "$CONKY_DIR" ]; then
    mkdir -p "$CONKY_DIR"
fi

# Check if ~/.config/autostart directory exists, if not, create it
if [ ! -d "$AUTO_START_SCRIPT" ]; then
    mkdir -p "$AUTO_START_SCRIPT"
fi


# Function to calculate md5sum of a file
calculate_md5sum() {
    md5sum "$1" | awk '{print $1}'
}


# Check if conky.conf already exists in ~/.conky and md5sum matches
if [ -f "$CONKY_DIR/conky.conf" ]; then
    if [ "$(calculate_md5sum "$CONKY_DIR/conky.conf")" = "$(calculate_md5sum "$CONKY_CONF")" ]; then
        echo "conky.conf already exists and md5sum matches, skipping copy." >>/dev/null
    else
        cp "$CONKY_CONF" "$CONKY_DIR/"
    fi
else
    cp "$CONKY_CONF" "$CONKY_DIR/"
fi

# copy desktop auto start into ~/.config/autostart
cp "$DESKTOP_CONKY_SCRIPT" "$AUTO_START_SCRIPT"
