emulate zsh -c "$(direnv export zsh)"

# Load powerlevel10k instantprompt
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# ZSH options
setopt \
  HIST_IGNORE_ALL_DUPS \
  AUTO_CD \
  AUTO_PUSHD \
  PUSHD_SILENT

# Load the shell dotfiles, and then some:
# * ~/.path can be used to extend `$PATH`.
# * ~/.extra can be used for other settings you don’t want to commit.
for file in ~/.{path,exports,aliases,functions,extra}; do
	[ -r "$file" ] && [ -f "$file" ] && source "$file";
done;

# Load zplug
source "$HOME/.zplug/init.zsh"

# Oh-my-zsh plugins
zplug "plugins/git", from:oh-my-zsh
zplug "plugins/autojump", from:oh-my-zsh
zplug "plugins/command-not-found", from:oh-my-zsh
zplug "plugins/github", from:oh-my-zsh
zplug "plugins/yarn", from:oh-my-zsh # yarn aliases

# Theme
zplug "romkatv/powerlevel10k", as:theme, depth:1

zplug "iam4x/zsh-iterm-touchbar"
zplug "zdharma/fast-syntax-highlighting", defer:2
zplug "hlissner/zsh-autopair", defer:2
zplug "changyuheng/zsh-interactive-cd"
zplug "ael-code/zsh-colored-man-pages"
zplug "DarrinTisdale/zsh-aliases-exa"
zplug "g-plane/zsh-yarn-autocompletions", hook-build:"./zplug.zsh", defer:2
zplug "zsh-users/zsh-autosuggestions"
zplug "zsh-users/zsh-completions"
# zplug "lukechilds/zsh-nvm"
zplug "djui/alias-tips"
zplug "sobolevn/wakatime-zsh-plugin"

source "${HOME}/.iterm2_shell_integration.zsh"

# Use menu for zsh completions
zstyle ':completion:*' menu select
# case insensitive path-completion
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'

if ! zplug check --verbose; then
  printf "Install? [y/N]: "
  if read -q; then
    echo
    zplug install
  fi
fi

zplug load

[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
