#!/bin/sh

echo "리눅스가 재밌나요? (yes / no)"

read answer

case $answer in
    yes | y | Y | Yes | YES | yesyes| yesyesyes | 예 | 네 )
        echo "yes";;
    no | n | N | No | NO | nono | nonono | 아니요 | 아뇨)
        echo "no";;
    *)
        echo "yes or no로 입력해 주세요. "
        exit 1;;
esac

exit 0