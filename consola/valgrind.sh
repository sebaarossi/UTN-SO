#!/bin/bash
FILE=consola
make $FILE
if test -f "./$FILE"; then
    valgrind --tool=memcheck --leak-check=yes --show-possibly-lost=no --show-reachable=no --num-callers=20 ./$FILE cfg/Instrucciones.txt 40
fi