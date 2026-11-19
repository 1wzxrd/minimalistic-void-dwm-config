 .bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '
[ -z "$DISPLAY" ] && export DISPLAY=:0
export PATH="$HOME/.local/bin:$PATH"


# --- Package Removal & Cleanup ---
alias xr='sudo xbps-remove'              # Remove a package (leaves dependencies)
alias xrr='sudo xbps-remove -R'          # Remove a package + unused dependencies
alias xro='sudo xbps-remove -o'          # Remove orphaned dependencies
alias xrc='sudo xbps-remove -O'          # Clean obsolete cached packages
alias xrca='sudo xbps-remove -OO'        # Clean ALL cached packages (use with caution)

# --- Package Holding (Pinning) ---
alias xhold='sudo xbps-pkgdb -m hold'    # Prevent a package from being updated
alias xunhold='sudo xbps-pkgdb -m unhold'# Allow a held package to update again
alias xheld='xbps-query -H'              # List all currently held packages

# --- Maintenance & Repair ---
alias xup='sudo xbps-install -Su'        # Sync repos and update system (alternative to xi -Su)
alias xfix='sudo xbps-pkgdb -a'          # Check and repair package database / permissions
alias xreconf='sudo xbps-reconfigure -fa'# Force reconfigure all installed packages
