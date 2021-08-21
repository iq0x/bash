#!/bin/bash

while true
do
  echo -e "\ncli_v0.1"
  read -p "command: " input_cmd
  clear
  if [[ $input_cmd == "help"* ]]; then
    if [[ $input_cmd == *" -more"* ]]; then
      command="\ninfo\nhttps://github.com/iq0x"
    else
      command="\nhelp\n********\nnow this help exist!\nfeel free to use it\n"
    fi
  else
      command="not exist!"
  fi
  echo -e "command" $input_cmd $command
done
