#!/bin/bash
# Packages-Gist
# Keeps lists of installed packages in a Gist at your GitHub account.

# Load config
[[ -r "$HOME/.config/packages-gist" ]] && source "$HOME/.config/packages-gist"

# Determine if gist id is present
if [ -z "$GIST_ID" ]; then
    # No gist id found
    if pacman -Qq | gist -f packages.txt gist --private > GIST_ID; then
        pacman  -Qs | gist -f packages-info.txt --update "$GIST_ID"
        echo "GIST_ID=$GIST_ID" >> "$HOME/.config/packages-gist"
    else
      echo "Fehler"
    fi
else
  # gist id found
   pacman  -Qq | gist -f packages.txt --update "$GIST_ID" > /dev/null # suppress output
fi
