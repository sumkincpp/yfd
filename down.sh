#!/bin/sh
user="gasubasu"
mkdir "$user-images"
aurl="http://api-fotki.yandex.ru/api/users/$user/albums/"
aids=(`curl --silent $aurl | grep 'urn' | sed 's/[^0-9]*//g'`)
for aid in ${aids[@]}
do
    echo $aid
    iurl="http://api-fotki.yandex.ru/api/users/$user/album/$aid/photos/"
    iids=(`curl --silent $iurl | grep 'href.*_XL' | sed 's/.*href=\"\([^"]*\)".*/\1/g; s/_XL/_XXS/'`)
    for i in ${iids[@]}
    do
        echo "get $i"
        wget -P "$user-images" $i
    done
done