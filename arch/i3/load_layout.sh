#!/bin/bash

# workspace 1
i3-msg "workspace admin; append_layout ~/.config/i3/workspace1.json"

(/opt/cisco/anyconnect/bin/vpnui > /dev/null 2&>1 &)
(kitty &)
(firefox > /dev/null 2>&1 &)

i3-msg "workspace code; append_layout ~/.config/i3/workspace2.json"

(vscodium > /dev/null 2>&1 &)
(firefox > /dev/null 2>&1 &)

i3-msg "workspace irc; append_layout ~/.config/i3/workspace3.json"

(slack > /dev/null 2>&1 &)
(teams > /dev/null 2>&1 &)
(discord > /dev/null 2>&1 &)

