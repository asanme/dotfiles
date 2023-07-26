eval "$(starship init zsh)"
alias spotx="bash <(curl -sSL https://raw.githubusercontent.com/SpotX-CLI/SpotX-Linux/main/install.sh) -P /home/asanme/.local/share/spotify-launcher/install/usr/share/spotify"
alias lvim="/home/asanme/.local/bin/lvim"
export CHROME_EXECUTABLE=/usr/bin/google-chrome-stable
export ANDROID_HOME=/home/asanme/Android/Sdk/
export ANDROID_SDK_ROOT=$ANDROID_HOME
export SPOTIFY_LOCATION="/home/asanme/.local/share/spotify-launcher/install/usr/share/spotify"
alias emulator=${ANDROID_HOME}/emulator/emulator 
export GDK_SCALE=2
export GDK_DPI_SCALE=0.7
export AMD_VULKAN_ICD=RADV
