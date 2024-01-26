#!/bin/bash

action=${1}

if [[ $action == "start" ]]
then echo "1: Going to start"
elif [[ $action == "stop" ]]
then echo "1: Going to stop"
elif [[ $action == "restart" ]]
then echo "1: Going to restart"
elif [[ $action == "reload" ]]
then echo "1: Going to reload"
fi

case ${action,,} in
    start)
        echo "2: Going to start"
        ;;
    stop)
        echo "3: Going to stop"
        ;;
    restart)
        echo "4: Going to restart"
        ;;
    reload)
        echo "5: Going to reload"
        ;;
    *) #default
        echo "Got unknown action"
esac

read -p "enter y or no " answer

#Y oe y or Yes or yEs or YES or yes or yeS
case ${answer} in
    [Yy]| [Yy][Ee][Ss] 
        echo "Entered Yes" 
        ;; 
    N*) # anything starting from N
        echo "Entered No"
        ;;
    *)
        echo "Invalid answer"
        ;;
esac

case ${answer^^} in
    Y*| YES)
        echo "Entered Yes"
        ;;
    N*| NO)
        echo "Entered No"
        ;;
    *)
        echo "Invalid answer"
        ;;
esac
    