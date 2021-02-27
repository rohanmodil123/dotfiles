# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=2000
SAVEHIST=2000

PROMPT='{%n: %~} %F{128}»»%f  '


bindkey -v
bindkey '^[[3~' delete-char

# Get rid of annoying output when keys F1 - F12 are hit
# bindkey -s ${key[F1]} ""
# bindkey -s ${key[F2]} ""
# bindkey -s ${key[F3]} ""
# bindkey -s ${key[F4]} ""
# bindkey -s ${key[F5]} ""
# bindkey -s ${key[F6]} ""
# bindkey -s ${key[F7]} ""
# bindkey -s ${key[F8]} ""
# bindkey -s ${key[F9]} ""
# bindkey -s ${key[F10]} ""
# bindkey -s ${key[F11]} ""
# bindkey -s ${key[F12]} ""



# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/rohan/.zshrc'
SHELL=/usr/bin/zsh
# fortune -n 370
fortune -a -s | cowsay

echo '  ======================================= ' 


if [ -e $HOME/.aliasrc ]; then
	source $HOME/.aliasrc
fi



autoload -Uz compinit
compinit
# End of lines added by compinstall
source ~/TarApplications/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
source /home/rohan/TarApplications/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
