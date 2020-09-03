#!/usr/bin/env zsh

brew install gnupg
brew link --overwrite gnupg
brew install pinentry-mac
echo "pinentry-program /usr/local/bin/pinentry-mac" >>~/.gnupg/gpg-agent.conf
killall gpg-agent
