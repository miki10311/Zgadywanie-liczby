#!/bin/bash

ILOSC_RUCHOW=0
RUCH_ZAWODNIKA=200
let WYLOSOWANA_LICZBA=$RANDOM%100+1


while [ $WYLOSOWANA_LICZBA != $RUCH_ZAWODNIKA ] ; do

    echo "PODAJ LICZBE 1-100: "

    read RUCH_ZAWODNIKA

    if ((($RUCH_ZAWODNIKA > 100) || ($RUCH_ZAWODNIKA < 1))) ; then
        echo "Wartość spoza przedziału" ;
    elif (($RUCH_ZAWODNIKA > $WYLOSOWANA_LICZBA)) ; then
        echo "Mniej!" ;
    elif (($RUCH_ZAWODNIKA < $WYLOSOWANA_LICZBA)) ; then
        echo "Więcej!" ;
    else 
        echo "GRATULACJE! Udało ci się zgadnąć!";
    fi

    ILOSC_RUCHOW=$(($ILOSC_RUCHOW + 1))

done 

    echo "Twoja ilość ruchów: "
    echo "$ILOSC_RUCHOW"