#!/bin/bash
PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"

MENU(){
  echo "Enter your username:"
  read USERNAME

  VERIFICATION=$($PSQL "SELECT user_id FROM users WHERE name = '$USERNAME'")
  if [[ $VERIFICATION ]]
  then
    GAMES=$($PSQL "SELECT COUNT(*) FROM games WHERE user_id=$VERIFICATION")
    BEST=$($PSQL "SELECT MIN(moves) FROM games WHERE user_id=$VERIFICATION")

    echo "Welcome back, $USERNAME! You have played $GAMES games, and your best game took $BEST guesses."
  else
    echo "Welcome, $USERNAME! It looks like this is your first time here."
    ADD_USER=$($PSQL "INSERT INTO users(name) VALUES('$USERNAME')")
  fi
  VERIFICATION=$($PSQL "SELECT user_id FROM users WHERE name = '$USERNAME'")

  NUM=$(( (RANDOM % 1000) + 1 ))

  GUESS $NUM '' 0 $VERIFICATION
}

GUESS(){
  if [[ $2 ]]
  then 
    echo $2
  else
    echo "Guess the secret number between 1 and 1000:"
  fi

  COUNT=$3

  NUMBER=$1

  VER=$4

  read GUESSES
  if [[ ! $GUESSES =~ ^[0-9]+$ ]]
  then
    GUESS $NUMBER "That is not an integer, guess again:" $COUNT $VER
  else
    COUNT=$((  COUNT + 1  ))
    if [[ $GUESSES == $NUMBER ]]
    then
      echo "You guessed it in $COUNT tries. The secret number was $NUMBER. Nice job!"
      ADD_GAME=$($PSQL "INSERT INTO games(user_id,moves) VALUES($VER,$COUNT)")
      sleep 0.1
      exit
    else
      if [[ $GUESSES < $NUMBER ]]
      then
        GUESS $NUMBER "It's lower than that, guess again:" $COUNT $VER
      else
        GUESS $NUMBER "It's higher than that, guess again:" $COUNT $VER
      fi
    fi
  fi
}

MENU