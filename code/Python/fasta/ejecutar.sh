#!/bin/bash
for ITERACION in 1 2 3 4 5 6 7 8 9 10 11
do 
   python3 ../../llamarEET.py 2
   echo ejecucion $ITERACION
   sleep 2 ;
   make run ;
   sleep 2 ;
   python3 ../../llamarEET.py 2
   sleep 5 ;
done