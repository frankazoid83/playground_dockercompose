#!/bin/bash

if [ $# -eq 0 ]
    then
        return "you must enter a repo name"
fi
#Dockerfile und Ordner machen
    #Ordner mit Namen des Eingabeparameters erstellen
    mkdir $1
    cd $1
    #Dockerfile erstellen
    touch Dockerfile

#Dockerfile builden und laufen lassen
    docker build -t $1 .
    docker run $1
    docker images
   
