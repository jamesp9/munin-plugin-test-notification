#!/bin/bash

if [ ! -e /tmp/beers ]
then
    touch /tmp/beers
    echo "0" > /tmp/beers
fi

case $1 in
   config)
        cat <<'EOM'
graph_title How Many Beers 
graph_vlabel count
graph_category mlug
beers.label beers
beers.warning 6
beers.critical 10
EOM
        exit 0;;
esac

printf "beers.value "
cat /tmp/beers
