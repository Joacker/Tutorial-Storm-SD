#!/bin/sh

byobu new-session -d -s Storm
byobu select-pane -t 0
byobu send-keys "/zookeeper/bin/zkServer start.sh" Enter
byobu new-window -t 1
byobu select-pane -t 1
byobu send-keys "sleep 4" Enter
byobu send-keys "./storm/bin/storm nimbus" Enter
byobu new-window -t 2
byobu select-pane -t 2
byobu send-keys "sleep 4" Enter
byobu send-keys "./storm/bin/storm supervisor" Enter
byobu new-window -t 3
byobu select-pane -t 3
byobu send-keys "sleep 4" Enter
byobu send-keys "./storm/bin/storm ui" Enter
