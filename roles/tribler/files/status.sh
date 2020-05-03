#!/bin/bash

curl -s -H "X-Api-Key: $(cat $HOME/.Tribler/7.5/triblerd.conf |grep key| cut -d ' ' -f 3)" localhost:8085/downloads | \
python3 -m json.tool | \
grep --color=never '"name\":\|"progress":\|"speed_down":'
