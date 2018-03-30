
# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi

if grep -q Microsoft /proc/version; then
    # Force ZSH
    export SHELL=/bin/zsh
    exec /bin/zsh -l
fi

# Set editor
export EDITOR=gvim

# Fix Java Themes on GTK
export _JAVA_OPTIONS="-Dawt.useSystemAAFontSettings=on -Dswing.aatext=true -Dswing.defaultlaf=com.sun.java.swing.plaf.gtk.GTKLookAndFeel -Dswing.crossplatformlaf=com.sun.java.swing.plaf.gtk.GTKLookAndFeel -Dsun.java2d.opengl=true"

echo "Welcome to $(uname -s) $(uname -r) at $(echo $HOST)"
