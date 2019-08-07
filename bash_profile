export PATH="$HOME/.local/bin:$PATH"

export PATH="$HOME/.pyenv/shims:$PATH"

# ANDROID
export ANDROID_SDK_HOME="$HOME/Library/Android/sdk"
export PATH="$ANDROID_SDK_HOME/platform-tools:$PATH"
export PATH="$ANDROID_SDK_HOME/emulator:$PATH"

# Ruby
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"


#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "/Users/atsuya046/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/atsuya046/.sdkman/bin/sdkman-init.sh"
