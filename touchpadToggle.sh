#!/bin/bash
id=$(xinput --list --id-only 'SynPS/2 Synaptics TouchPad')
devEnabled=$(xinput --list-props $id | awk '/Device Enabled/{print !$NF}')
xinput --set-prop $id 'Device Enabled' $devEnabled
#msg='on'
#if [ $devEnabled == '0' ]; then msg='off'; fi
#notify-send --icon computer "Touchpad $msg"
