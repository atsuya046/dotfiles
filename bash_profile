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
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"

# Flutter
export FLUTTER_HOME="$HOME/Develop/flutter"
export PATH="$PATH:$FLUTTER_HOME/bin"
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

[[ -s "$HOME/.gvm/scripts/gvm" ]] && source "$HOME/.gvm/scripts/gvm"
export GO111MODULE="on"

export PATH=$HOME/.nodebrew/current/bin:$PATH

eval "$(direnv hook bash)"

export PATH="/usr/local/opt/mysql@5.6/bin:$PATH"
eval export PATH="/Users/s10129/.rbenv/shims:${PATH}"
export RBENV_SHELL=sh
command rbenv rehash 2>/dev/null
rbenv() {
  local command
  command="${1:-}"
  if [ "$#" -gt 0 ]; then
    shift
  fi

  case "$command" in
  rehash|shell)
    eval "$(rbenv "sh-$command" "$@")";;
  *)
    command rbenv "$command" "$@";;
  esac
}
