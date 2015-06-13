#!/bin/bash
if [ "$(uname)" == "Darwin" ]; then
  echo "alias testify='. "`pwd`"/testify.sh'" >> ~/.bash_profile
  echo "alias testify='. "`pwd`"/testify.sh'" >> ~/.zshrc
  echo "alias testify='. "`pwd`"/testify.sh'" >> ~/.bashrc
elif [ "$(expr substr $(uname -s) 1 5)" == "Linux" ]; then
  echo "Put something like this in your $HOME/.bashrc or $HOME/.zshrc: '. /path/to/z.sh'"
elif [ "$(expr substr $(uname -s) 1 10)" == "MINGW32_NT" ]; then
  echo ". "`pwd`"/testify.sh" >> ~/.bash_profile
fi