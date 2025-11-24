# ======== ZSHRC (interactive shell) ========

# Use modern completion
autoload -U compinit && compinit

# Faster prompt substitution
export DISABLE_AUTO_TITLE="true"
setopt promptsubst

## Alias
source "$HOME/.zsh_alias"

# Starship Prompt
eval "$(starship init zsh)"

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

if command -v tmux &> /dev/null && [ -z "$TMUX" ]; then
  tmux attach-session -t default || tmux new-session -s default
fi
