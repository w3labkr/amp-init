#!/bin/bash
#
# Download and run the latest release version.
# https://github.com/w3labkr/amp-init
#
# Usage
# git clone https://github.com/w3labkr/amp-init.git
# cd amp-init
# chmod +x ./install.sh
# ./install.sh

# Work even if somebody does "sh thisscript.sh".
set -e

# Print a welcome message.
echo
echo "The update begins."
echo
echo '----------------------------------------------------------------------------------------'
echo '    ____                       _   _                _____           _                   '
echo '   / __ \                     | | (_)              / ____|         | |                  '
echo '  | |  | |_ __   ___ _ __ __ _| |_ _ _ __   __ _  | (___  _   _ ___| |_ ___ _ __ ___    '
echo '  | |  | |  _ \ / _ \  __/ _  | __| |  _ \ / _  |  \___ \| | | / __| __/ _ \  _   _ \   '
echo '  | |__| | |_) |  __/ | | (_| | |_| | | | | (_| |  ____) | |_| \__ \ ||  __/ | | | | |  '
echo '   \____/| .__/ \___|_|  \__,_|\__|_|_| |_|\__, | |_____/ \__, |___/\__\___|_| |_| |_|  '
echo '         | |                                __/ |          __/ |                        '
echo '         |_|                               |___/          |___/                         '
echo '----------------------------------------------------------------------------------------'

# Upgrade operating system to the latest.
apt update && apt -y upgrade

# Removing unused dependencies
apt -y autoremove

# Print a completion message.
echo
echo "The update is complete."
