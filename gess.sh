#!/bin/bash
calculate() {
  gess=$1
  rand=$2
  tens=1000
  result=""
  for i in $(seq 1 4); do
    firstGess=$((($gess/$tens)%10))
    firstRand=$((($rand/$tens)%10))
    if [[ $firstGess == $firstRand ]]; then
      result+="1"
    else 
      result+="0"
    fi
    tens=$(($tens/10))
  done
  echo $result 
}

createNum() {
  ten=1000
  num=0
  for i in $(seq 1 4); do
    temp=$((RANDOM % 4 + 1))
    num=$(($num+($temp*$ten)))
    ten=$(($ten/10))
  done
  echo $num
}

ran=$(createNum)

continu=true
while [ continu ]; do
  echo "enter a gess"
  read num
  if [[ $num == 0 ]]; then
    exit 0
  fi
  if [[ $num == $ran ]]; then
     echo "bolbol"
     exit 0
  else 
    echo $(calculate num ran)
  fi
done

