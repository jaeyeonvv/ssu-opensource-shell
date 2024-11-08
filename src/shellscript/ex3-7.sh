#!/bin/sh

# 입력된 디렉터리 존재 확인
if [ -d "$1" ]
then
    cd "$1"
else
    mkdir "$1"
    cd "$1"
fi

i=0
while [ $i -lt 5 ]
do
    mkdir -p "file$i"
    touch "file$i.txt"
    ln -sf "$(pwd)/file$i.txt" "file$i/file$i.txt"
    i=$((i + 1))
done

exit 0