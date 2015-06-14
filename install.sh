#!/bin/bash
if [ "$(uname)" == "Darwin" ]; then
  echo "alias testify='. "`pwd`"/testify.sh "`pwd`"'" >> ~/.bash_profile
  echo "alias testify='. "`pwd`"/testify.sh "`pwd`"'" >> ~/.zshrc
  echo "alias testify='. "`pwd`"/testify.sh "`pwd`"'" >> ~/.bashrc
elif [ "$(expr substr $(uname -s) 1 5)" == "Linux" ]; then
  echo "Put something like this in your $HOME/.bashrc or $HOME/.zshrc: '. /path/to/testify.sh'"
elif [ "$(expr substr $(uname -s) 1 10)" == "MINGW32_NT" ]; then
  echo "Put something like this in your $HOME/.bashrc or $HOME/.zshrc: '. /path/to/testify.sh'"
fi