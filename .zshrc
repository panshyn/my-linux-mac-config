# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="powerlevel10k/powerlevel10k"

plugins=(
git
zsh-autosuggestions
zsh-syntax-highlighting
fzf-tab
)

source $ZSH/oh-my-zsh.sh

autoload -Uz compinit
compinit

ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=8'
zstyle ':completion:*' menu select
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}' 'r:|[._-]=**' 
zstyle ':completion:*' list-colors ''

zstyle ':fzf-tab:*' fzf-preview 'cat {} 2>/dev/null  tree -C {} 2>/dev/null  exa -T {} 2>/dev/null || ls -l {}'

export PATH="$HOME/bin:/usr/local/bin:$PATH"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
