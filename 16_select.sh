#!/bin/bash
PS3 = "please select os"
select os in linux windows mac 
do
    case ${os} in
    linux)
        echo "You selected linux"
        break
        ;;
    windows)
        echo "You selected windows"
        break
        ;;
    mac)
        echo "You selected mac"
        break
        ;;
    *)
        echo "Invalid option"
    esac
    echo "Thanks"
done