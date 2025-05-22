#!/bin/bash 


PLAYERHP=100 #player HP
ENEMYHP=100 #enemy HP

echo " Welcome to bash battle arena. you start with 100 HP. you can win by depleting the enemy HP to zero by either attacking or healing but each action will have a random value"

echo " Press 1 for attack and 2 to heal" 



 while [ $PLAYERHP -gt 0 ] && [ $ENEMYHP -gt 0 ]
do
  echo "Player HP: $PLAYERHP | Enemy HP: $ENEMYHP"  #echos player  and enemy HP
  echo "Choose your action:"
  echo "1. Attack"
  echo "2. Heal"
  read -rp "Enter your choice [1-2]: " choice #reads user input
  # Randomly generate enemy heal value
  
  case $choice in
  1)

  PlayerAttack=$((  (RANDOM%99) + 1     )) #generate random attack value between 1 and 99
  echo "You attack the enemy for $PlayerAttack damage"
    ENEMYHP=$((ENEMYHP - PlayerAttack)) #subtracts player attack from enemy HP
EnemyChoice=$(( (RANDOM%2) + 1 ))
  if [ $EnemyChoice -eq 1 ]; then
    EnemyAttack=$(( (RANDOM%99) + 1 ))
    echo "Enemy attacks you for $EnemyAttack damage"
    PLAYERHP=$((PLAYERHP - EnemyAttack))
  else
    # Randomly generate enemy heal value
    EnemyHeal=$(( (RANDOM%99) + 1 )) #generate random heal value between 1 and 99
    ENEMYHP=$((ENEMYHP + EnemyHeal))
    echo "Enemy heals for $EnemyHeal HP"
    if [ $ENEMYHP -gt 100 ]; then
      ENEMYHP=100
    fi
  fi    

echo "Enemy HP: $ENEMYHP" #echos enemy HP
echo "Your HP: $PLAYERHP" #echos player HP
;;
  2)


    PlayerHeal=$(( (RANDOM%99) + 1 ))   #generate random heal value between 1 and 99

    echo "You heal for $PlayerHeal HP" #echos player heal
    if [ $PlayerHeal -gt 100 ]; then
      PlayerHeal=100
    fi
    PLAYERHP=$((PLAYERHP + PlayerHeal))
    ENEMYChoice=$(( (RANDOM%2) + 1 ))   
    if [ $EnemyChoice -eq 1 ]; then
      EnemyAttack=$(( (RANDOM%99) + 1 ))
      echo "Enemy attacks you for $EnemyAttack damage"
      PLAYERHP=$((PLAYERHP - EnemyAttack))
    else

      
        EnemyHeal=$(( (RANDOM%99) + 1 )) #generate random heal value between 1 and 99
         echo "Enemy heals for $EnemyHeal HP"
      ENEMYHP=$((ENEMYHP + EnemyHeal))
      if [ $ENEMYHP -gt 100 ]; then
        ENEMYHP=100
      fi
    fi

   ;;
  *) 
  echo "Invalid Response , Try Again..."

   ;;

   esac 
  # simulate attack
  

  if [ $PLAYERHP -le 0 ]; then
    echo "You have been defeated!"
    break
  fi
  if [ $ENEMYHP -le 0 ]; then
    echo "You have defeated the enemy!"
    break
  fi
done