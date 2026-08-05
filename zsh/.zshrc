# ======== ZSHRC (interactive shell) ========
export TERM=xterm-256color

# Use modern completion
autoload -U compinit && compinit

# Disable homebrew autoupdate & hint
export HOMEBREW_NO_AUTO_UPDATE=1

# Faster prompt substitution
export DISABLE_AUTO_TITLE="true"
setopt promptsubst

## Alias
source "$HOME/.zsh_alias"

# zoxide (cd thông minh)
command -v zoxide >/dev/null && eval "$(zoxide init zsh)"

# fzf (fuzzy search)
# macOS already handles this from brew install -- but keep it clean
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Improve history (tìm lệnh nhanh hơn)
HISTFILE=~/.zsh_history
HISTSIZE=50000
SAVEHIST=50000
setopt hist_ignore_dups
setopt share_history

## MYPATH
export PATH="$HOME/.composer/vendor/bin:$PATH"
export PATH="/Users/duy/code/utils:$PATH"
export PATH="/Users/duy/.codeium/windsurf/bin:$PATH"
export PATH="/Users/duy/Development/SDK/flutter/bin:$PATH"
export PATH="$HOME/.gem/bin:$PATH"
export PATH="$HOME/.cargo/bin:$PATH"
export PATH="$HOME/.config/composer/vendor/bin:$PATH"

[ -f ~/.local/bin/mise ] && eval "$(~/.local/bin/mise activate zsh)"

## Added for sqlite
export PATH="/opt/homebrew/opt/sqlite/bin:$PATH"

## Added for mysql
export PATH="/opt/homebrew/opt/mysql-client/bin:$PATH"

# sentry
fpath=("$HOME/.local/share/zsh/site-functions" $fpath)

# Always keep this in the END ==========
command -v starship >/dev/null && eval "$(starship init zsh)"
