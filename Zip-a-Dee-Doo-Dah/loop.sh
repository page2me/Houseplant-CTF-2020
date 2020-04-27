#!/bin/bash
x=1819
while [ $x -gt -1  ]
do
  typ=`ls $x.*|cut -f2 -d.`
  echo $x.$typ
  case $typ in
    gz)
      out=`gzip -fkNd $x.$typ`
      ;;
    tar)
      out=`tar -kxvf $x.$typ`
      ;;
    zip)
      pas=`fcrackzip -Du $x.$typ -p password.txt|grep "=="|cut -f3 -d= |tr -d ' \n'`
      #echo $x.$typ:$pas
      out=`unzip -oP $pas $x.$typ`
      ;;
  esac
  x=$(( $x - 1 ))
done
#out=`cat flag.txt`
