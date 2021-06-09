#!/usr/bin/env bash

echo "Welcome to Guessing game..."

function guessing_game {
	echo "Please Guess the number of files in the current directory:"
	read guess
	file_count=$(ls | wc -l)
}

guessing_game

while [[ $guess -ne $file_count ]]
      do
	      if [[ $guess -lt $file_count ]] 
	         then
			 echo "Guess is Too Low...Try again..."
	         else
			 echo "Guess is Too High...Try again..."
	      fi
              guessing_game
      done

echo "Congratulation! It is the correct answer..."
