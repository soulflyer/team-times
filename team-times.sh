#!/bin/bash
tz() {
    # Can take a single parameter representing the hour, or none for current time
    hournow=`date "+%H"`
    # get rid of the leading 0 so it isn't interpreted as octal
    hournow=${hournow#0}
    [[ $1 != "" ]] && time=$1 || time=$hournow
    local offset=$(($time - $hournow))
    [[ $offset < 0 ]] && offset=$(( offset + 24 ))
    echo "Josh    " $( TZ=America/Los_Angeles date -v "+"$offset"H" "+%H")
    echo "Eduardo " $( TZ=America/New_York    date -v "+"$offset"H" "+%H")
    echo "GMT     " $( TZ=GMT                 date -v "+"$offset"H" "+%H")
    echo "UK      " $( TZ=Europe/London       date -v "+"$offset"H" "+%H")
    echo "CET     " $( TZ=Europe/Prague       date -v "+"$offset"H" "+%H")
    echo "Sergey  " $( TZ=Europe/Moscow       date -v "+"$offset"H" "+%H")
    echo "Vietnam " $( TZ=Asia/Saigon         date -v "+"$offset"H" "+%H")
}
