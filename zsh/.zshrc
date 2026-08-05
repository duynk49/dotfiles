# ======== ZSHRC (interactive shell) ========
export TERM=xterm-256color

# Use modern completion
autoload -U compinit && compinit

# Disable homebrew autoupdate & hint
export HOMEBREW_NO_AUTO_UPDATE=1
export HOMEBREW_NO_ENV_HINTS=1

# Faster prompt substitution
export DISABLE_AUTO_TITLE="true"
setopt promptsubst

## Alias
source "$HOME/.zsh_alias"

# zoxide (cd thông minh)
eval "$(zoxide init zsh)"

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
export PATH=$PATH:$HOME/.composer/vendor/bin
export PATH="/Users/duy/code/utils:$PATH"
export PATH="/Users/duy/.codeium/windsurf/bin:$PATH"
export PATH="/Users/duy/Development/SDK/flutter/bin:$PATH"
export PATH="$HOME/.gem/bin:$PATH"
export PATH="$HOME/.cargo/bin:$PATH"
export PATH="$HOME/.config/composer/vendor/bin:$PATH"

eval "$(~/.local/bin/mise activate zsh)"

# Added by Windsurf
export PATH="/Users/duy.nguyen/.codeium/windsurf/bin:$PATH"

# Added by Antigravity
export PATH="/Users/duy.nguyen/.antigravity/antigravity/bin:$PATH"

# opencode
export PATH=/Users/duy.nguyen/.opencode/bin:$PATH

# PHP
export PATH="/opt/homebrew/opt/php@8.4/bin:$PATH"
export PATH="/opt/homebrew/opt/php@8.4/sbin:$PATH"

# Added by LM Studio CLI tool (lms)
export PATH="$PATH:/Users/duy.nguyen/.lmstudio/bin"


# Added by Antigravity CLI installer
export PATH="/Users/duy.nguyen/.local/bin:$PATH"

## Added for sqlite
export PATH="/opt/homebrew/opt/sqlite/bin:$PATH"

## Added for mysql
export PATH="/opt/homebrew/opt/mysql-client/bin:$PATH"

# Always keep this in the END ==========
eval "$(starship init zsh)"

# sentry
fpath=("/Users/duy.nguyen/.local/share/zsh/site-functions" $fpath)
