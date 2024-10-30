#!/usr/bin/bash
handel(){
  user=$1;
  sudo useradd -m $user -s /usr/bin/bash 
  
}
read -p "Enter First Name: " userName;
handel  userName
