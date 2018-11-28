#!/bin/bash
j() {
  path="$HOME/.jump"
  touch $path

  add() {
    name=$1
    exists=$(cat $path | awk '{print $1}' | grep $name)
    if [ -z "$exists" ]
    then
      echo $name $PWD >> $path
    else
      echo $name is already registered
      return
    fi
    echo Path $PWD added as $name
  }

  jump() {
    name=$1
    exists=$(cat $path | awk '{print $1}' | grep $name)
    if [ -z "$exists" ]
    then
      echo $name is not registered
      return
    fi
    p=$(awk -v pattern=$name '$1 ~ pattern {print $2}' $path)
    cd $p
  }

  list() {
    cat $path
  }

  remove() {
    grep -v $1 $path > $path.temp
    mv $path.temp $path
  }

  case "$1" in
    "add"|"-a")
      add $2
      ;;
    "--list"|"-l")
      list
      ;;
    "--remove"|"-r")
      remove $2
      ;;
    *)
      jump $1
      ;;
  esac
}

